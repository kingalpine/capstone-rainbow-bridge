require "application_system_test_case"

class RentalItemsTest < ApplicationSystemTestCase
  setup do
    @rental_item = rental_items(:one)
  end

  test "visiting the index" do
    visit rental_items_url
    assert_selector "h1", text: "Rental Items"
  end

  test "creating a Rental item" do
    visit rental_items_url
    click_on "New Rental Item"

    fill_in "Rental item cost", with: @rental_item.Rental_Item_Cost
    fill_in "Rental item description", with: @rental_item.Rental_Item_Description
    fill_in "Rental item name", with: @rental_item.Rental_Item_Name
    click_on "Create Rental item"

    assert_text "Rental item was successfully created"
    click_on "Back"
  end

  test "updating a Rental item" do
    visit rental_items_url
    click_on "Edit", match: :first

    fill_in "Rental item cost", with: @rental_item.Rental_Item_Cost
    fill_in "Rental item description", with: @rental_item.Rental_Item_Description
    fill_in "Rental item name", with: @rental_item.Rental_Item_Name
    click_on "Update Rental item"

    assert_text "Rental item was successfully updated"
    click_on "Back"
  end

  test "destroying a Rental item" do
    visit rental_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rental item was successfully destroyed"
  end
end
