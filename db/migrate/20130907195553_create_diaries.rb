class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
    	t.string		:note
    	t.references	:patient

      t.timestamps
    end
  end
end
