# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_19_041725) do

  create_table "episodes", force: :cascade do |t|
    t.string "title"
    t.integer "episode_number"
    t.integer "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_episodes_on_season_id"
  end

  create_table "movie_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.integer "video_quality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_users_on_movie_id"
    t.index ["user_id", "movie_id"], name: "index_movie_users_on_user_id_and_movie_id", unique: true
    t.index ["user_id"], name: "index_movie_users_on_user_id"
    t.index ["video_quality_id"], name: "index_movie_users_on_video_quality_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "plot"
    t.float "hd_price"
    t.float "sd_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "season_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "season_id"
    t.integer "video_quality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["season_id"], name: "index_season_users_on_season_id"
    t.index ["user_id", "season_id"], name: "index_season_users_on_user_id_and_season_id", unique: true
    t.index ["user_id"], name: "index_season_users_on_user_id"
    t.index ["video_quality_id"], name: "index_season_users_on_video_quality_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.string "title"
    t.text "plot"
    t.float "hd_price"
    t.float "sd_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "video_qualities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
