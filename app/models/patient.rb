class Patient < ActiveRecord::Base
	has_many :diaries, dependent: :destroy
	belongs_to :subsystem

	validates :nome, 
		presence: true
	validates :codigo_postal, 
		numericality: { allow_blank: true }, 
		length: { is: 4, allow_nil: true }
	validates :codigo_postal_ext, 
		numericality: { allow_blank: true }, 
		length: { is: 3, allow_nil: true }
	validates :rnu, 
		numericality: { allow_blank: true }, 
		uniqueness: { allow_nil: true }
end
