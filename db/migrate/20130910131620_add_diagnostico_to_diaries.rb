class AddDiagnosticoToDiaries < ActiveRecord::Migration
  def change
  	add_column :diaries, :diagnostico, :string
  end
end
