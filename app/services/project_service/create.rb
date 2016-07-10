module ProjectService
  class Create < ServiceBase
    string :github_page_url,
           :web_page_url,
           :title,
           :description,
           :opening_body,
           :closing_body
    date :date_deployed
    boolean :featured, default: false
    interface :color_set
    array :languages,
          :devices

    def execute
      project = build_project
      #### Temporary. Will use soon. ####
      # Cloudinary::Uploader.upload(file_data || image) if file_data || image
      validate_and_save(project)
    end

    private

    def build_project
      Project.new(project_attributes)
    end

    def project_attributes
      attributes = {
        github_page_url: github_page_url,
        web_page_url: web_page_url,
        title: title,
        description: description,
        opening_body: opening_body,
        closing_body: closing_body,
        date_deployed: date_deployed,
        featured: featured
      }
      associations = {
        color_set_attributes: color_set,
        languages_attributes: languages,
        devices_attributes: devices
      }
      associations.merge(attributes)
    end
  end
end
