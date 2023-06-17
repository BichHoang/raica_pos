class Api::UsersController < ApplicationController

  respond_to :json

  def index
    users = User.where(deleted_at: nil)
    render_success(data: UserSerializer.new(users).serializable_hash[:data].map { |data| data[:attributes] })
  end
end
