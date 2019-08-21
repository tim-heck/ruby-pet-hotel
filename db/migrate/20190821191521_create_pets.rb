class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name, null: false
      t.string :breed, null: false
      t.string :color, null: false
      t.string :checked_in, null: false
    end
  end
end
