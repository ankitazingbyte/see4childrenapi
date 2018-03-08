class UserSerializer < ActiveModel::Serializer
 	attributes :id, :email, :token, :password_digest, :username, :role, :reset_password_token, :reset_password_sent_at, :created_at, :updated_at,
 	 :reset_password_token, :unconfirmed_email, :reset_password_sent_at
end
