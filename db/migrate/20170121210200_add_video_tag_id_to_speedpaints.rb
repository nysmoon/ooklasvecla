class AddVideoTagIdToSpeedpaints < ActiveRecord::Migration[5.0]
  def change
    add_column :speedpaints, :video_tag_id, :integer
  end
end
