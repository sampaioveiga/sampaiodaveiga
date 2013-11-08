class AddActivoToUsers < ActiveRecord::Migration
	def change
		add_column :users, :ativo, :boolean
	end
end
