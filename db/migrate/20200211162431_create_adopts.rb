class CreateAdopts < ActiveRecord::Migration[5.2]
  def change
    create_table :adopts do |t|
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
