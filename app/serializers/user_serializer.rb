class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :age, :bio, :avatar
end
