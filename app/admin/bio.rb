ActiveAdmin.register Bio do
  permit_params :body,
                :email,
                :phone_number,
                :name,
                :resume,
                :background_image,
                :profile_picture
end
