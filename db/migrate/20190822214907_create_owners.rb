class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :num_of_pets
    end
    create_table :pets do |t|
      t.belongs_to :owner, foreign_key: true
      t.string :name 
      t.string :breed 
      t.string :color 
      t.string :checked_in 
    end
  end
end

