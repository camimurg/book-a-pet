class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :address
      t.string :city
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
