class AddColumnToSpeedpaints < ActiveRecord::Migration[5.0]
  def change
    add_column :speedpaints, :tag_id, :integer
  end
end
