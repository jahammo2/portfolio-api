module Helpers
  module FileUpload
    def get_uploaded_file(*args)
      Rack::Test::UploadedFile.new(File.join(Rails.root.join(*args)))
    end
  end
end
