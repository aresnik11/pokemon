# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_27_020054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kinds", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "moves", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poke_kinds", force: :cascade do |t|
    t.bigint "kind_id", null: false
    t.bigint "pokemon_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kind_id"], name: "index_poke_kinds_on_kind_id"
    t.index ["pokemon_id"], name: "index_poke_kinds_on_pokemon_id"
  end

  create_table "poke_moves", force: :cascade do |t|
    t.bigint "pokemon_id", null: false
    t.bigint "move_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["move_id"], name: "index_poke_moves_on_move_id"
    t.index ["pokemon_id"], name: "index_poke_moves_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.integer "height"
    t.integer "weight"
    t.string "front_img"
    t.string "back_img"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "poke_kinds", "kinds"
  add_foreign_key "poke_kinds", "pokemons"
  add_foreign_key "poke_moves", "moves"
  add_foreign_key "poke_moves", "pokemons"
end
