class AddColumnsToArts < ActiveRecord::Migration[5.0]
  def change
    add_column :arts, :name, :string
    add_column :arts, :description, :text
    add_column :arts, :image_url, :string
    add_column :arts, :creation_date, :date
  end
end
