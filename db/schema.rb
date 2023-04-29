

ActiveRecord::Schema.define(version: 2023_04_29_093301) do

  create_table "spices", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "description"
    t.string "notes"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
