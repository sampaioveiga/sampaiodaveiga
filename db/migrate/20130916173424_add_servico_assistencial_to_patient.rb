class AddServicoAssistencialToPatient < ActiveRecord::Migration
  def change
  	add_column :patients, :subsystem_id, :integer
  	add_index :patients, :subsystem_id
  end
end
