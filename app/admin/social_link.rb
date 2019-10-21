ActiveAdmin.register SocialLink do
  permit_params :site,
                :url

  form do |f|
    collection = %w{github instagram linkedin twitter dribbble gitlab}

    f.inputs do
      f.input :site, as: :select, collection: collection
      f.input :url
    end

    f.actions
  end
end
