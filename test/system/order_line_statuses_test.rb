require "application_system_test_case"

class OrderLineStatusesTest < ApplicationSystemTestCase
  setup do
    @order_line_status = order_line_statuses(:one)
  end

  test "visiting the index" do
    visit order_line_statuses_url
    assert_selector "h1", text: "Order Line Statuses"
  end

  test "creating a Order line status" do
    visit order_line_statuses_url
    click_on "New Order Line Status"

    fill_in "Order line status name", with: @order_line_status.Order_Line_Status_Name
    click_on "Create Order line status"

    assert_text "Order line status was successfully created"
    click_on "Back"
  end

  test "updating a Order line status" do
    visit order_line_statuses_url
    click_on "Edit", match: :first

    fill_in "Order line status name", with: @order_line_status.Order_Line_Status_Name
    click_on "Update Order line status"

    assert_text "Order line status was successfully updated"
    click_on "Back"
  end

  test "destroying a Order line status" do
    visit order_line_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order line status was successfully destroyed"
  end
end
