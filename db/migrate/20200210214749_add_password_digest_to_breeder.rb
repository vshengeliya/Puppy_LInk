class AddPasswordDigestToBreeder < ActiveRecord::Migration[5.2]
  def change
    add_column :breeders, :password_digest, :string
  end
end
