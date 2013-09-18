class ChangeTypeColumnPatients < ActiveRecord::Migration
	def up
    	change_column :patients, :historial, :text
	end
	def down
    	change_column :patients, :historial, :string
	end
end
