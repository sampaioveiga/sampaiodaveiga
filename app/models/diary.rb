class Diary < ActiveRecord::Base
	belongs_to :patient

	validates :diagnostico, 
		presence: true
end
