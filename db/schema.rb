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

ActiveRecord::Schema.define(version: 2019_07_23_101515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.string "publisher"
    t.text "synopsis"
    t.string "isbn13"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "language"
    t.string "link"
    t.string "cover"
    t.bigint "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "favourite_authors", force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_favourite_authors_on_author_id"
    t.index ["user_id"], name: "index_favourite_authors_on_user_id"
  end

  create_table "favourite_books", force: :cascade do |t|
    t.bigint "book_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_favourite_books_on_book_id"
    t.index ["user_id"], name: "index_favourite_books_on_user_id"
  end

  create_table "favourite_theories", force: :cascade do |t|
    t.bigint "theory_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theory_id"], name: "index_favourite_theories_on_theory_id"
    t.index ["user_id"], name: "index_favourite_theories_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "star_rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theories", force: :cascade do |t|
    t.string "name"
    t.text "history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "photo", default: "./Panda-user-default-photo.png"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "books", "authors"
  add_foreign_key "favourite_authors", "authors"
  add_foreign_key "favourite_authors", "users"
  add_foreign_key "favourite_books", "books"
  add_foreign_key "favourite_books", "users"
  add_foreign_key "favourite_theories", "theories"
  add_foreign_key "favourite_theories", "users"
end
