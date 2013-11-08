class Diary < ActiveRecord::Base
	belongs_to :patient

	validates :diagnostico, 
		presence: { message: "não pode ser nulo" }
end
