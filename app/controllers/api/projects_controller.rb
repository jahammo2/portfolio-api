module Api
  class ProjectsController < ApiController
    before_action :validate_params_exist!, only: [:create]

    def index
      outcome = ProjectService::Index.run
      included = %w{color_set}
      render_service(
        outcome,
        included: included,
        is_collection: true,
        serializer: ProjectsSerializer,
      )
    end

    def show
      outcome = ProjectService::Show.run(id: params[:id])
      included = %w{color_set languages devices devices.screenshot}
      render_service(outcome, included: included)
    end

    private

    def project_params
      params.require(:data).permit(
        attributes: %i{
          github_page_url
          web_page_url
          title
          description
          opening_body
          closing_body
          date_deployed
          featured
        },
        relationships: [
          color_set: [
            data: %i{
              background
              button
              circle
              logo_background
              logo_title
              button_text
              button_hover
              text
            },
          ],
          languages: [
            data: [:title],
          ],
          devices: [
            data: [:title],
          ],
        ],
      )
    end

    def create_inputs
      project_params[:attributes].merge(
        color_set: project_params[:relationships][:color_set][:data],
        languages: project_params[:relationships][:languages][:data],
        devices: project_params[:relationships][:devices][:data],
      )
    end

    def validate_params_exist!
      detail = "Params do not contain data for color_set, languages, or devices"

      errors = [{
        "status" => "422",
        "title" => "Validation Failed",
        "detail" => detail,
      }]

      begin
        create_inputs
      rescue NoMethodError
        render_failure_json(422, errors)
      end
    end
  end
end
