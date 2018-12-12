# rubocop:disable Metrics/BlockLength
ActiveAdmin.register Project do
  permit_params :github_page_url,
                :web_page_url,
                :title,
                :description,
                :opening_body,
                :closing_body,
                :date_deployed,
                :featured,
                :header_image,
                :logo,
                languages_attributes: %i{id title _destroy},
                devices_attributes: [
                  :id,
                  :title,
                  :featured,
                  :_destroy,
                  screenshot_attributes: %i{
                    id
                    caption
                    image
                    _destroy
                  },
                ],
                color_set_attributes: %i{
                  id
                  background
                  button
                  circle
                  logo_background
                  logo_title
                  button_text
                  button_hover
                  text
                  _destroy
                }

  form do |f|
    f.inputs "Base Information" do
      f.input :github_page_url
      f.input :web_page_url
      f.input :title
      f.input :description
      f.input :opening_body
      f.input :closing_body
      f.input :date_deployed
      f.input :featured
      f.input :header_image
      f.input :logo
    end

    f.inputs do
      f.has_many :color_set, allow_destroy: true do |color_set|
        color_set.input :background
        color_set.input :circle
        color_set.input :text
        color_set.input :logo_background
        color_set.input :logo_title
        color_set.input :button
        color_set.input :button_text
        color_set.input :button_hover
      end
    end

    f.inputs do
      f.has_many :languages, allow_destroy: true do |language|
        language.input :title
      end
    end

    f.inputs do
      collection = ["desktop", "tablet", "mobile"]

      f.has_many :devices, allow_destroy: true do |device|
        device.input :title, as: :select, collection: collection
        device.input :featured

        device.has_many :screenshot, allow_destroy: true do |screenshot|
          screenshot.input :caption
          screenshot.input :image
        end
      end
    end

    f.actions
  end
end
# rubocop:enable Metrics/BlockLength
