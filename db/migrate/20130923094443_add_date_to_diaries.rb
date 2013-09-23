class AddDateToDiaries < ActiveRecord::Migration
  def change
  	add_column :diaries, :data_consulta, :date
  end
end
