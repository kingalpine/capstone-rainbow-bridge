require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Customer", with: @order.Customer_id
    fill_in "Order cost", with: @order.Order_Cost
    fill_in "Order date finish", with: @order.Order_Date_Finish
    check "Order delivery" if @order.Order_Delivery
    fill_in "Order description", with: @order.Order_Description
    fill_in "Order due date", with: @order.Order_Due_Date
    fill_in "Order start date", with: @order.Order_Start_Date
    fill_in "Order status", with: @order.Order_Status_id
    fill_in "Order type", with: @order.Order_Type_id
    fill_in "Rental order", with: @order.Rental_Order_id
    fill_in "Venue city", with: @order.Venue_City
    fill_in "Venue state", with: @order.Venue_State
    fill_in "Venue street address", with: @order.Venue_Street_Address
    fill_in "Venue zip", with: @order.Venue_Zip
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @order.Customer_id
    fill_in "Order cost", with: @order.Order_Cost
    fill_in "Order date finish", with: @order.Order_Date_Finish
    check "Order delivery" if @order.Order_Delivery
    fill_in "Order description", with: @order.Order_Description
    fill_in "Order due date", with: @order.Order_Due_Date
    fill_in "Order start date", with: @order.Order_Start_Date
    fill_in "Order status", with: @order.Order_Status_id
    fill_in "Order type", with: @order.Order_Type_id
    fill_in "Rental order", with: @order.Rental_Order_id
    fill_in "Venue city", with: @order.Venue_City
    fill_in "Venue state", with: @order.Venue_State
    fill_in "Venue street address", with: @order.Venue_Street_Address
    fill_in "Venue zip", with: @order.Venue_Zip
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
