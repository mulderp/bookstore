class CreateReadingLists < ActiveRecord::Migration
  def change
    create_table :reading_lists do |t|
      t.string :name
      t.date :start
      t.date :end
      t.text :description

      t.timestamps
    end
  end
end
