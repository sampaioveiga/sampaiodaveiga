class ChangeNoteToHistorialFromDiaries < ActiveRecord::Migration
  def up
  	rename_column :diaries, :note, :historial
  end

  def down
  	rename_column :diaries, :historial, :note
  end
end
