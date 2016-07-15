ActiveAdmin.register SocialLink do
  permit_params :site,
                :url

  form do |f|
    f.inputs do
      f.input :site, as: :select, collection: %w{github instagram linkedin twitter}
      f.input :url
    end

    f.actions
  end
end
