class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.string :area
      t.string :status
      t.text :description

      t.timestamps
    end
  end
end
