class ApplicationController < ActionController::API

  def render_success(data:, message: nil, status: :ok)
    body = {
      status: status,
      data: data,
    }
    if message.present?
      body.merge!(message: message)
    end
    render json: body.to_json, status: status
  end

  def render_error(message:, status: :unauthorized)
    render json: {
      status: status,
      message: message,
    }, status: status
  end
end
