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

ActiveRecord::Schema.define(version: 2020_02_28_045408) do

  create_table "cake_flavors", force: :cascade do |t|
    t.string "Cake_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customer_statuses", force: :cascade do |t|
    t.string "Customer_Status_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer "Customer_Status_id", null: false
    t.string "Customer_First_Name", null: false
    t.string "Customer_Last_Name", null: false
    t.string "Customer_Email", null: false
    t.string "Customer_Phone"
    t.string "Customer_Street_Address"
    t.string "string"
    t.string "Customer_City"
    t.string "Customer_State"
    t.string "Customer_Zip_Code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Customer_Status_id"], name: "index_customers_on_Customer_Status_id"
  end

  create_table "dietary_restrictions", force: :cascade do |t|
    t.string "Dietary_Restriction_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_statuses", force: :cascade do |t|
    t.string "Employee_Status_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.text "Employee_Type_Description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "Employee_Status_id", null: false
    t.string "Employee_First_Name", null: false
    t.string "Employee_Last_Name", null: false
    t.string "Employee_Email", null: false
    t.string "Employee_Phone", null: false
    t.integer "Employee_Type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Employee_Status_id"], name: "index_employees_on_Employee_Status_id"
    t.index ["Employee_Type_id"], name: "index_employees_on_Employee_Type_id"
  end

  create_table "fillings", force: :cascade do |t|
    t.string "Filling_Name", null: false
    t.text "Filling_Description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "frosting_flavors", force: :cascade do |t|
    t.string "Frosting_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_line_restrictions", force: :cascade do |t|
    t.integer "Order_Line_id", null: false
    t.integer "Dietary_Restriction_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Dietary_Restriction_id"], name: "index_order_line_restrictions_on_Dietary_Restriction_id"
    t.index ["Order_Line_id"], name: "index_order_line_restrictions_on_Order_Line_id"
  end

  create_table "order_line_statuses", force: :cascade do |t|
    t.string "Order_Line_Status_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_lines", force: :cascade do |t|
    t.integer "Order_id", null: false
    t.integer "Product_id", null: false
    t.integer "Order_Line_Status_id", null: false
    t.datetime "Order_Line_Start_Date", null: false
    t.datetime "Order_Line_Finish_Date"
    t.text "Order_Line_Description"
    t.text "Special_Order_Notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Order_Line_Status_id"], name: "index_order_lines_on_Order_Line_Status_id"
    t.index ["Order_id"], name: "index_order_lines_on_Order_id"
    t.index ["Product_id"], name: "index_order_lines_on_Product_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string "Order_Status_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_types", force: :cascade do |t|
    t.text "Order_Description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.text "Order_Description"
    t.integer "Order_Type_id", null: false
    t.integer "Order_Status_id", null: false
    t.integer "Customer_id", null: false
    t.string "Venue_Street_Address"
    t.string "Venue_City"
    t.string "Venue_State"
    t.string "Venue_Zip"
    t.integer "Order_Cost"
    t.boolean "Order_Delivery", null: false
    t.datetime "Order_Due_Date", null: false
    t.datetime "Order_Start_Date", null: false
    t.datetime "Order_Date_Finish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
    t.index ["Order_Status_id"], name: "index_orders_on_Order_Status_id"
    t.index ["Order_Type_id"], name: "index_orders_on_Order_Type_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "Product_Name", null: false
    t.text "Product_Description", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_items", force: :cascade do |t|
    t.string "Rental_Item_Name", null: false
    t.text "Rental_Item_Description"
    t.integer "Rental_Item_Cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rental_lines", force: :cascade do |t|
    t.integer "Order_id", null: false
    t.integer "Rental_Item_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Order_id"], name: "index_rental_lines_on_Order_id"
    t.index ["Rental_Item_id"], name: "index_rental_lines_on_Rental_Item_id"
  end

  create_table "shapes", force: :cascade do |t|
    t.string "Shape_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "task_assignments", force: :cascade do |t|
    t.integer "Task_id", null: false
    t.integer "Employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Employee_id"], name: "index_task_assignments_on_Employee_id"
    t.index ["Task_id"], name: "index_task_assignments_on_Task_id"
  end

  create_table "task_statuses", force: :cascade do |t|
    t.string "Task_Status_Name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "Order_Line_id", null: false
    t.datetime "Task_Start_Date", null: false
    t.datetime "Task_Due_Date", null: false
    t.datetime "Task_Finish_Date"
    t.string "Task_Name", null: false
    t.text "Task_Description", null: false
    t.integer "Task_Status_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Order_Line_id"], name: "index_tasks_on_Order_Line_id"
    t.index ["Task_Status_id"], name: "index_tasks_on_Task_Status_id"
  end

  create_table "tier_fillings", force: :cascade do |t|
    t.integer "Tier_id", null: false
    t.integer "Filling_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Filling_id"], name: "index_tier_fillings_on_Filling_id"
    t.index ["Tier_id"], name: "index_tier_fillings_on_Tier_id"
  end

  create_table "tiers", force: :cascade do |t|
    t.integer "Position"
    t.integer "Cake_Flavor_id", null: false
    t.integer "Frosting_Flavor_id", null: false
    t.integer "Shape_id", null: false
    t.integer "Order_Line_id", null: false
    t.string "Tier_Size", null: false
    t.text "Tier_Special_Notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Cake_Flavor_id"], name: "index_tiers_on_Cake_Flavor_id"
    t.index ["Frosting_Flavor_id"], name: "index_tiers_on_Frosting_Flavor_id"
    t.index ["Order_Line_id"], name: "index_tiers_on_Order_Line_id"
    t.index ["Shape_id"], name: "index_tiers_on_Shape_id"
  end

  add_foreign_key "customers", "Customer_Statuses"
  add_foreign_key "employees", "Employee_Statuses"
  add_foreign_key "employees", "Employee_Types"
  add_foreign_key "order_line_restrictions", "Dietary_Restrictions"
  add_foreign_key "order_line_restrictions", "Order_Lines"
  add_foreign_key "order_lines", "Order_Line_Statuses"
  add_foreign_key "order_lines", "Orders"
  add_foreign_key "order_lines", "Products"
  add_foreign_key "orders", "Customers"
  add_foreign_key "orders", "Order_Statuses"
  add_foreign_key "orders", "Order_Types"
  add_foreign_key "rental_lines", "Orders"
  add_foreign_key "rental_lines", "Rental_Items"
  add_foreign_key "task_assignments", "Employees"
  add_foreign_key "task_assignments", "Tasks"
  add_foreign_key "tasks", "Order_Lines"
  add_foreign_key "tasks", "Task_Statuses"
  add_foreign_key "tier_fillings", "Fillings"
  add_foreign_key "tier_fillings", "Tiers"
  add_foreign_key "tiers", "Cake_Flavors"
  add_foreign_key "tiers", "Frosting_Flavors"
  add_foreign_key "tiers", "Order_Lines"
  add_foreign_key "tiers", "Shapes"
end
