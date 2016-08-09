ActiveAdmin.register Bio do
  permit_params :body,
                :title,
                :email,
                :phone_number,
                :name,
                :resume,
                :background_image,
                :profile_picture
end
