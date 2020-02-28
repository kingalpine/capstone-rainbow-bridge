require "application_system_test_case"

class RentalLinesTest < ApplicationSystemTestCase
  setup do
    @rental_line = rental_lines(:one)
  end

  test "visiting the index" do
    visit rental_lines_url
    assert_selector "h1", text: "Rental Lines"
  end

  test "creating a Rental line" do
    visit rental_lines_url
    click_on "New Rental Line"

    fill_in "Order", with: @rental_line.Order_id
    fill_in "Rental item", with: @rental_line.Rental_Item_id
    click_on "Create Rental line"

    assert_text "Rental line was successfully created"
    click_on "Back"
  end

  test "updating a Rental line" do
    visit rental_lines_url
    click_on "Edit", match: :first

    fill_in "Order", with: @rental_line.Order_id
    fill_in "Rental item", with: @rental_line.Rental_Item_id
    click_on "Update Rental line"

    assert_text "Rental line was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental line" do
    visit rental_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental line was successfully destroyed"
  end
end
