require "application_system_test_case"

class OrderTypesTest < ApplicationSystemTestCase
  setup do
    @order_type = order_types(:one)
  end

  test "visiting the index" do
    visit order_types_url
    assert_selector "h1", text: "Order Types"
  end

  test "creating a Order type" do
    visit order_types_url
    click_on "New Order Type"

    fill_in "Order description", with: @order_type.Order_Description
    click_on "Create Order type"

    assert_text "Order type was successfully created"
    click_on "Back"
  end

  test "updating a Order type" do
    visit order_types_url
    click_on "Edit", match: :first

    fill_in "Order description", with: @order_type.Order_Description
    click_on "Update Order type"

    assert_text "Order type was successfully updated"
    click_on "Back"
  end

  test "destroying a Order type" do
    visit order_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order type was successfully destroyed"
  end
end
