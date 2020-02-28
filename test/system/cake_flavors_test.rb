require "application_system_test_case"

class CakeFlavorsTest < ApplicationSystemTestCase
  setup do
    @cake_flavor = cake_flavors(:one)
  end

  test "visiting the index" do
    visit cake_flavors_url
    assert_selector "h1", text: "Cake Flavors"
  end

  test "creating a Cake flavor" do
    visit cake_flavors_url
    click_on "New Cake Flavor"

    fill_in "Cake name", with: @cake_flavor.Cake_Name
    click_on "Create Cake flavor"

    assert_text "Cake flavor was successfully created"
    click_on "Back"
  end

  test "updating a Cake flavor" do
    visit cake_flavors_url
    click_on "Edit", match: :first

    fill_in "Cake name", with: @cake_flavor.Cake_Name
    click_on "Update Cake flavor"

    assert_text "Cake flavor was successfully updated"
    click_on "Back"
  end

  test "destroying a Cake flavor" do
    visit cake_flavors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cake flavor was successfully destroyed"
  end
end
