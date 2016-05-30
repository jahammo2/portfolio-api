class Api::ApiController < ApplicationController
  before_action :authenticate_admin!, only: [:create]

  def authenticate_admin!
    unless current_admin
      return render json: {
        meta: {
          success: false,
          message: "Authentication failed."
        },
        errors: ["Authorized users only."]
      }, status: 401
    end
  end

  private

  def render_service(outcome, included: [], is_collection: false)
    if outcome.valid?
      render_service_success_json(outcome, included, is_collection)
    else
      render_service_failure_json(outcome)
    end
  end

  def render_service_success_json(outcome, included, is_collection)
    data = outcome.result
    json = JSONAPI::Serializer.serialize(data, include: included, is_collection: is_collection)
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
      errors: errors
    }, status: status
  end
end
