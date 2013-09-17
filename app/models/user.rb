class User < ActiveRecord::Base
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: true, 
		length: { minimum: 3 }
  validates :email, 
  		presence: true, 
  		format: { with: VALID_EMAIL_REGEX }, 
  		uniqueness: { case_sensitive: false }
  validates :password, 
  		presence: true, 
  		on: :create, 
  		length: { minimum: 5 }
end
