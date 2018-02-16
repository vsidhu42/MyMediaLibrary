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

ActiveRecord::Schema.define(version: 20180215235337) do

  create_table "bookratings", force: :cascade do |t|
    t.integer "bookratingid"
    t.integer "thebookid"
    t.decimal "rating"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer "bookid"
    t.string "title"
    t.integer "theyear"
    t.string "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movieratings", force: :cascade do |t|
    t.integer "movieratingid"
    t.integer "themovieid"
    t.decimal "rating"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.integer "movieid"
    t.string "title"
    t.integer "theyear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songratings", force: :cascade do |t|
    t.integer "songratingid"
    t.integer "thesongid"
    t.decimal "rating"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.integer "songid"
    t.string "title"
    t.integer "theyear"
    t.string "artist"
    t.string "album"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
