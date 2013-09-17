class AddColumnsToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :historial, :string
  	add_column :patients, :diagnostico, :string
  end
end
