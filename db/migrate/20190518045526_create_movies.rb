class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :plot
      t.float :hd_price
      t.float :sd_price

      t.timestamps
    end
  end
end
