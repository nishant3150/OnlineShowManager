class CreateMovieUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_users do |t|
      t.references :user
      t.references :movie
      t.references :video_quality

      t.timestamps
      t.index [:user_id, :movie_id], unique: true
    end
  end
end
