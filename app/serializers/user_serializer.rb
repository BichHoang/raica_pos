class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :username, :fullname, :phone, :created_at
end
