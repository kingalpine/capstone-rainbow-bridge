require "application_system_test_case"

class OrderLinesTest < ApplicationSystemTestCase
  setup do
    @order_line = order_lines(:one)
  end

  test "visiting the index" do
    visit order_lines_url
    assert_selector "h1", text: "Order Lines"
  end

  test "creating a Order line" do
    visit order_lines_url
    click_on "New Order Line"

    fill_in "Order line description", with: @order_line.Order_Line_Description
    fill_in "Order line finish date", with: @order_line.Order_Line_Finish_Date
    fill_in "Order line start date", with: @order_line.Order_Line_Start_Date
    fill_in "Order line status", with: @order_line.Order_Line_Status_id
    fill_in "Order", with: @order_line.Order_id
    fill_in "Product", with: @order_line.Product_id
    fill_in "Special order notes", with: @order_line.Special_Order_Notes
    click_on "Create Order line"

    assert_text "Order line was successfully created"
    click_on "Back"
  end

  test "updating a Order line" do
    visit order_lines_url
    click_on "Edit", match: :first

    fill_in "Order line description", with: @order_line.Order_Line_Description
    fill_in "Order line finish date", with: @order_line.Order_Line_Finish_Date
    fill_in "Order line start date", with: @order_line.Order_Line_Start_Date
    fill_in "Order line status", with: @order_line.Order_Line_Status_id
    fill_in "Order", with: @order_line.Order_id
    fill_in "Product", with: @order_line.Product_id
    fill_in "Special order notes", with: @order_line.Special_Order_Notes
    click_on "Update Order line"

    assert_text "Order line was successfully updated"
    click_on "Back"
  end

  test "destroying a Order line" do
    visit order_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order line was successfully destroyed"
  end
end
