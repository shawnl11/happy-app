class CreateHappywords < ActiveRecord::Migration
  def change
    create_table :happywords do |t|
      t.string :genre
      t.text :phrase

      t.timestamps null: false
    end
  end
end
