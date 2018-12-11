module Api
  class ApiController < ActionController::Base
    include DeviseTokenAuth::Concerns::SetUserByToken
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    before_action :authenticate_admin!, only: [:create]

    def authenticate_admin!
      unless current_admin
        render json: {
          meta: {
            success: false,
            message: "Authentication failed.",
          },
          errors: ["Authorized users only."],
        }, status: 401
      end
    end

    private

    def render_service(
      outcome,
      included: [],
      is_collection: false,
      serializer: nil
    )
      if outcome.valid?
        render_service_success_json(
          outcome,
          included,
          is_collection,
          serializer,
        )
      else
        render_service_failure_json(outcome)
      end
    end

    def render_service_success_json(
      outcome,
      included,
      is_collection,
      serializer
    )
      data = outcome.result
      options = {}
      options[:is_collection] = is_collection
      options[:include] = included
      options[:serializer] = serializer
      json = JSONAPI::Serializer.serialize(data, options)

      render json: json, status: 200
    end

    def render_service_failure_json(outcome)
      errors = outcome.json_api_errors
      message = outcome.failure_message
      render_failure_json(422, errors, message: message)
    end

    def render_failure_json(status, errors, options = {})
      message = options[:message] ||= "Failure."
      meta = { success: false, message: message }
      render json: {
        meta: meta,
        errors: errors,
      }, status: status
    end
  end
end
