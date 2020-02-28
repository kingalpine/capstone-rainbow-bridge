require "application_system_test_case"

class DietaryRestrictionsTest < ApplicationSystemTestCase
  setup do
    @dietary_restriction = dietary_restrictions(:one)
  end

  test "visiting the index" do
    visit dietary_restrictions_url
    assert_selector "h1", text: "Dietary Restrictions"
  end

  test "creating a Dietary restriction" do
    visit dietary_restrictions_url
    click_on "New Dietary Restriction"

    fill_in "Dietary restriction name", with: @dietary_restriction.Dietary_Restriction_Name
    click_on "Create Dietary restriction"

    assert_text "Dietary restriction was successfully created"
    click_on "Back"
  end

  test "updating a Dietary restriction" do
    visit dietary_restrictions_url
    click_on "Edit", match: :first

    fill_in "Dietary restriction name", with: @dietary_restriction.Dietary_Restriction_Name
    click_on "Update Dietary restriction"

    assert_text "Dietary restriction was successfully updated"
    click_on "Back"
  end

  test "destroying a Dietary restriction" do
    visit dietary_restrictions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dietary restriction was successfully destroyed"
  end
end
