class CreatePhrases < ActiveRecord::Migration
  def change
    create_table :phrases do |t|
      t.text :topic

      t.timestamps null: false
    end
  end
end
