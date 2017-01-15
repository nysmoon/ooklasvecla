class CreateSpeedpaints < ActiveRecord::Migration[5.0]
  def change
    create_table :speedpaints do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :video_url
      t.date :creation_date

      t.timestamps
    end
  end
end
