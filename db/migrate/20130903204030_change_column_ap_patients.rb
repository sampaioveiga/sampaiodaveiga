class ChangeColumnApPatients < ActiveRecord::Migration
  def up
  	rename_column :patients, :antecedentes_profissionais, :antecedentes_pessoais
  end

  def down
  	rename_column :patients, :antecedentes_pessoais, :antecedentes_profissionais
  end
end
