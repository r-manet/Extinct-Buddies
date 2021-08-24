class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.text :description
      t.integer :price
      t.string :species
      t.string :category
      t.string :name
      t.text :requirement
      t.string :habitat
      t.string :location
      t.integer :age_ago
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
