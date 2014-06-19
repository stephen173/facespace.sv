class User
	include Mongoid::Document
	include ActiveModel::SecurePassword
  
  has_many :wallposts

	field :email, type: String
  field :name, type: String
  field :profile_pic_url, type: String
  field :bio, type: String
	field :password_digest, type: String

	validate :email, presence: true, uniqueness: true

	has_secure_password
end

