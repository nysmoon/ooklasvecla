class AddColumnToArts < ActiveRecord::Migration[5.0]
  def change
    add_column :arts, :tag_id, :integer
  end
end
