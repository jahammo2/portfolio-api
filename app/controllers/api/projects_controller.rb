class Api::ProjectsController < Api::ApiController
  before_action :validate_params_exist!, only: [:create]

  def create
    outcome = ProjectService::Create.run(create_inputs)
    included = ['color_set', 'languages', 'devices']
    render_service(outcome, included: included)
  end

  def index
    outcome = ProjectService::Index.run()
    included = ['color_set', 'languages', 'devices']
    render_service(outcome, included: included, is_collection: true)
  end

  private
  def project_params
    params.require(:data).permit(
      attributes: [
        :github_page_url,
        :web_page_url,
        :title,
        :description,
        :body,
        :date_deployed,
        :featured
      ],
      relationships: [
        color_set: [
          data: [
            :background,
            :button,
            :circle
          ]
        ],
        languages: [
          data: [:title]
        ],
        devices: [
          data: [:title]
        ]
      ]
    )
  end

  def create_inputs
    project_params[:attributes].merge({
      color_set: project_params[:relationships][:color_set][:data],
      languages: project_params[:relationships][:languages][:data],
      devices: project_params[:relationships][:devices][:data],
    })
  end

  def validate_params_exist!
    errors = [{
      "status" => "422",
      "title" => "Validation Failed",
      "detail" => "Params do not contain data for color_set, languages, or devices"
    }]

    begin
      create_inputs
    rescue NoMethodError
      render_failure_json(422, errors)
    end
  end
end
