class AddUrlToSocials < ActiveRecord::Migration[5.0]
  def change
    add_column :socials, :url, :string
  end
end
