class Subsystem < ActiveRecord::Base
	has_many :patients

	validates :nome, 
		presence: { message: "não pode ser nulo"}, 
		uniqueness: { message: "já existe" }
end
