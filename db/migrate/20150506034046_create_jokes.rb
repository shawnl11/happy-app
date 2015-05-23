class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.text :line

      t.timestamps null: false
    end
  end
end
