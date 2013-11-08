class Patient < ActiveRecord::Base
	has_many :diaries, dependent: :destroy
	belongs_to :subsystem

	validates :nome, 
		presence: { message: "não pode ser nulo" }
	validates :codigo_postal, 
		numericality: { allow_blank: true, message: "tem de ser numérico" }, 
		length: { is: 4, allow_nil: true, message: "só pode ter 4 números" }
	validates :codigo_postal_ext, 
		numericality: { allow_blank: true, message: "tem de ser numérico" }, 
		length: { is: 3, allow_nil: true, message: "só pode ter 3 números" }
	validates :rnu, 
		numericality: { allow_blank: true, message: "tem de ser numérico" }, 
		uniqueness: { allow_nil: true, message: "já existe" }
end
