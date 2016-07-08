class CreateBackgrounds < ActiveRecord::Migration
  def change
    drop_table :backgrounds
    create_table :backgrounds do |t|
      t.string :background_type
      t.string :race
      t.string :subrace
      t.string :age
      t.string :height
      t.string :weight
      t.string :alignment
      t.text :appearance
      t.references :character, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
