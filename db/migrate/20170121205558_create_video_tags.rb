class CreateVideoTags < ActiveRecord::Migration[5.0]
  def change
    create_table :video_tags do |t|
      t.string :name

      t.timestamps
    end
  end
end
