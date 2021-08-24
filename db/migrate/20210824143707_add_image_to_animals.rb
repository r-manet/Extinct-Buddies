class AddImageToAnimals < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :image, :string
  end
end
