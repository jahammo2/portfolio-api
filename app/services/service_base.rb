class ServiceBase < ActiveInteraction::Base
  def success_message
    "Success!"
  end

  def json_api_errors
    errors.map do |key, value|
      {
        status: "422",
        title: "Validation Failed",
        detail: "#{key.to_s.titleize} #{value}"
      }
    end
  end

  def failure_message
    "Failure."
  end

  def validate_and_save(model_object)
    unless model_object.save
      errors.merge!(model_object.errors)
    end
    model_object
  end
end
