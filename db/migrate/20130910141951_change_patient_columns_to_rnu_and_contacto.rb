class ChangePatientColumnsToRnuAndContacto < ActiveRecord::Migration
  def up
  	change_column :patients, :telefone, :string
  	rename_column :patients, :telefone, :contacto
  	rename_column :patients, :telemovel, :rnu
  end

  def down
  	rename_column :patients, :rnu, :telemovel
  	rename_column :patients, :contacto, :telefone
  	change_column :patients, :telefone, :integer
  end
end
