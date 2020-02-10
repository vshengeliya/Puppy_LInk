class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.string :breed
      t.string :gender
      t.string :size
      t.string :image
      t.integer :user_id
      t.integer :breeder_id
      t.integer :center_id

      t.timestamps
    end
  end
end
