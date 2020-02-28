require "application_system_test_case"

class FrostingFlavorsTest < ApplicationSystemTestCase
  setup do
    @frosting_flavor = frosting_flavors(:one)
  end

  test "visiting the index" do
    visit frosting_flavors_url
    assert_selector "h1", text: "Frosting Flavors"
  end

  test "creating a Frosting flavor" do
    visit frosting_flavors_url
    click_on "New Frosting Flavor"

    fill_in "Frosting name", with: @frosting_flavor.Frosting_Name
    click_on "Create Frosting flavor"

    assert_text "Frosting flavor was successfully created"
    click_on "Back"
  end

  test "updating a Frosting flavor" do
    visit frosting_flavors_url
    click_on "Edit", match: :first

    fill_in "Frosting name", with: @frosting_flavor.Frosting_Name
    click_on "Update Frosting flavor"

    assert_text "Frosting flavor was successfully updated"
    click_on "Back"
  end

  test "destroying a Frosting flavor" do
    visit frosting_flavors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Frosting flavor was successfully destroyed"
  end
end
