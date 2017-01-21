class AddUrlToSpeedpaints < ActiveRecord::Migration[5.0]
  def change
    add_column :speedpaints, :url, :string
  end
end
