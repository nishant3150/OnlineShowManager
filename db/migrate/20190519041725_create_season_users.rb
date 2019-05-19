class CreateSeasonUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :season_users do |t|
      t.references :user
      t.references :season
      t.references :video_quality

      t.timestamps
      t.index [:user_id, :season_id], unique: true
    end
  end
end
