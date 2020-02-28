require "application_system_test_case"

class OrderLineRestrictionsTest < ApplicationSystemTestCase
  setup do
    @order_line_restriction = order_line_restrictions(:one)
  end

  test "visiting the index" do
    visit order_line_restrictions_url
    assert_selector "h1", text: "Order Line Restrictions"
  end

  test "creating a Order line restriction" do
    visit order_line_restrictions_url
    click_on "New Order Line Restriction"

    fill_in "Dietary restriction", with: @order_line_restriction.Dietary_Restriction_id
    fill_in "Order line", with: @order_line_restriction.Order_Line_id
    click_on "Create Order line restriction"

    assert_text "Order line restriction was successfully created"
    click_on "Back"
  end

  test "updating a Order line restriction" do
    visit order_line_restrictions_url
    click_on "Edit", match: :first

    fill_in "Dietary restriction", with: @order_line_restriction.Dietary_Restriction_id
    fill_in "Order line", with: @order_line_restriction.Order_Line_id
    click_on "Update Order line restriction"

    assert_text "Order line restriction was successfully updated"
    click_on "Back"
  end

  test "destroying a Order line restriction" do
    visit order_line_restrictions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order line restriction was successfully destroyed"
  end
end
