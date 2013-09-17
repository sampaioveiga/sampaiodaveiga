class Subsystem < ActiveRecord::Base
	has_many :patients

	validates :nome, 
		presence:true, 
		uniqueness: true
end
