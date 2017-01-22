class AddNameToSocials < ActiveRecord::Migration[5.0]
  def change
    add_column :socials, :name, :string
  end
end
