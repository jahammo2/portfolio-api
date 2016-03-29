class Api::ProjectsController < Api::ApiController
  def create
    outcome = ProjectService::Create.run(create_inputs)
    included = ['color_set', 'languages', 'devices']
    render_service(outcome, included: included)
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
        :date_deployed
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
end
