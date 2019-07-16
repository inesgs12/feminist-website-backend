class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :photo, :bio, :password_digest
end
