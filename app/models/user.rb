class User < ActiveRecord::Base
	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :nome, 
		presence: { message: "não pode ser nulo" }, 
		length: { minimum: 3, message: "tem de ser mais de 3 caracteres" }
  validates :email, 
  		presence: { message: "não pode ser nulo" }, 
  		format: { with: VALID_EMAIL_REGEX, message: "é inválido" }, 
  		uniqueness: { case_sensitive: false, message: "é inválido" }
  validates :password, 
  		presence: { message: "não pode ser nulo" }, 
  		on: :create, 
  		length: { minimum: 5, message: "tem de ter mais de 5 caracteres" }
end
