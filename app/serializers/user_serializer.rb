class UserSerializer < ActiveModel::Serializer
 	attributes :id, :email, :token, :password_digest, :username, :role, :created_at, :updated_at

end
