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

ActiveRecord::Schema.define(version: 2020_03_21_031817) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cake_flavors", force: :cascade do |t|
    t.string "flavor_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_statuses", force: :cascade do |t|
    t.string "customer_status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_first_name", null: false
    t.string "customer_last_name", null: false
    t.string "customer_email", null: false
    t.string "customer_phone"
    t.string "customer_street_address"
    t.string "customer_city"
    t.string "customer_state"
    t.string "customer_zip_code"
    t.integer "customer_status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_status_id"], name: "index_customers_on_customer_status_id"
  end

  create_table "dietary_restrictions", force: :cascade do |t|
    t.string "dietary_restriction_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_statuses", force: :cascade do |t|
    t.string "employee_status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string "employee_type_description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "employee_first_name", null: false
    t.string "employee_last_name", null: false
    t.string "employee_email", null: false
    t.string "employee_phone", null: false
    t.integer "employee_status_id", null: false
    t.integer "employee_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_status_id"], name: "index_employees_on_employee_status_id"
    t.index ["employee_type_id"], name: "index_employees_on_employee_type_id"
  end

  create_table "fillings", force: :cascade do |t|
    t.string "filling_name", null: false
    t.string "filling_description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "frosting_flavors", force: :cascade do |t|
    t.string "frosting_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_line_restrictions", force: :cascade do |t|
    t.integer "order_line_id", null: false
    t.integer "dietary_restriction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["dietary_restriction_id"], name: "index_order_line_restrictions_on_dietary_restriction_id"
    t.index ["order_line_id"], name: "index_order_line_restrictions_on_order_line_id"
  end

  create_table "order_line_statuses", force: :cascade do |t|
    t.string "order_line_status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.string "order_line_description"
    t.datetime "order_line_start_date", null: false
    t.datetime "order_line_finish_date"
    t.string "special_order_notes"
    t.integer "product_id", null: false
    t.integer "order_line_status_id", null: false
    t.integer "order_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_order_lines_on_order_id"
    t.index ["order_line_status_id"], name: "index_order_lines_on_order_line_status_id"
    t.index ["product_id"], name: "index_order_lines_on_product_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "order_status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_types", force: :cascade do |t|
    t.string "order_description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "order_description"
    t.decimal "order_cost"
    t.datetime "order_start_date"
    t.datetime "order_due_date"
    t.datetime "order_date_finish"
    t.boolean "order_delivery"
    t.string "delivery_street_address"
    t.string "delivery_city"
    t.string "delivery_state"
    t.string "delivery_zip_code"
    t.integer "customer_id", null: false
    t.integer "order_type_id", null: false
    t.integer "order_status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["order_status_id"], name: "index_orders_on_order_status_id"
    t.index ["order_type_id"], name: "index_orders_on_order_type_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name", null: false
    t.string "product_description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_items", force: :cascade do |t|
    t.string "rental_item_name", null: false
    t.string "rental_item_description"
    t.decimal "rental_item_cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_lines", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "rental_item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_rental_lines_on_order_id"
    t.index ["rental_item_id"], name: "index_rental_lines_on_rental_item_id"
  end

  create_table "shapes", force: :cascade do |t|
    t.string "shape_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "task_assignments", force: :cascade do |t|
    t.integer "task_id", null: false
    t.integer "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_task_assignments_on_employee_id"
    t.index ["task_id"], name: "index_task_assignments_on_task_id"
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "task_status_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name", null: false
    t.string "task_description"
    t.datetime "task_start_date", null: false
    t.datetime "task_due_date", null: false
    t.datetime "task_finish_date"
    t.integer "task_status_id", null: false
    t.integer "order_line_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_line_id"], name: "index_tasks_on_order_line_id"
    t.index ["task_status_id"], name: "index_tasks_on_task_status_id"
  end

  create_table "tier_fillings", force: :cascade do |t|
    t.integer "tier_id", null: false
    t.integer "filling_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["filling_id"], name: "index_tier_fillings_on_filling_id"
    t.index ["tier_id"], name: "index_tier_fillings_on_tier_id"
  end

  create_table "tiers", force: :cascade do |t|
    t.integer "position", null: false
    t.string "tier_size", null: false
    t.string "tier_special_notes"
    t.integer "cake_flavor_id", null: false
    t.integer "frosting_flavor_id", null: false
    t.integer "shape_id", null: false
    t.integer "order_line_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cake_flavor_id"], name: "index_tiers_on_cake_flavor_id"
    t.index ["frosting_flavor_id"], name: "index_tiers_on_frosting_flavor_id"
    t.index ["order_line_id"], name: "index_tiers_on_order_line_id"
    t.index ["shape_id"], name: "index_tiers_on_shape_id"
  end

  create_table "version_associations", force: :cascade do |t|
    t.integer "version_id"
    t.string "foreign_key_name", null: false
    t.integer "foreign_key_id"
    t.string "foreign_type"
    t.index ["foreign_key_name", "foreign_key_id", "foreign_type"], name: "index_version_associations_on_foreign_key"
    t.index ["version_id"], name: "index_version_associations_on_version_id"
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", limit: 8, null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.text "object_changes", limit: 1073741823
    t.integer "transaction_id"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
    t.index ["transaction_id"], name: "index_versions_on_transaction_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "customers", "customer_statuses"
  add_foreign_key "employees", "employee_statuses"
  add_foreign_key "employees", "employee_types"
  add_foreign_key "order_line_restrictions", "dietary_restrictions"
  add_foreign_key "order_line_restrictions", "order_lines"
  add_foreign_key "order_lines", "order_line_statuses"
  add_foreign_key "order_lines", "orders"
  add_foreign_key "order_lines", "products"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "order_statuses"
  add_foreign_key "orders", "order_types"
  add_foreign_key "rental_lines", "orders"
  add_foreign_key "rental_lines", "rental_items"
  add_foreign_key "task_assignments", "employees"
  add_foreign_key "task_assignments", "tasks"
  add_foreign_key "tasks", "order_lines"
  add_foreign_key "tasks", "task_statuses"
  add_foreign_key "tier_fillings", "fillings"
  add_foreign_key "tier_fillings", "tiers"
  add_foreign_key "tiers", "cake_flavors"
  add_foreign_key "tiers", "frosting_flavors"
  add_foreign_key "tiers", "order_lines"
  add_foreign_key "tiers", "shapes"
end
