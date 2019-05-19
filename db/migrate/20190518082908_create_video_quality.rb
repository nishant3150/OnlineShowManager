class CreateVideoQuality < ActiveRecord::Migration[5.2]
  def change
    create_table :video_qualities do |t|
      t.string :name

      t.timestamps
    end
  end
end
