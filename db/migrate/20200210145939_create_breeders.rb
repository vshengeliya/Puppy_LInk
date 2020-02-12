class CreateBreeders < ActiveRecord::Migration[5.2]
  def change
    create_table :breeders do |t|
      t.string :name
      t.integer :rating, :default => 0
      t.string :location

      t.timestamps
    end
  end
end
