require "application_system_test_case"

class TierFillingsTest < ApplicationSystemTestCase
  setup do
    @tier_filling = tier_fillings(:one)
  end

  test "visiting the index" do
    visit tier_fillings_url
    assert_selector "h1", text: "Tier Fillings"
  end

  test "creating a Tier filling" do
    visit tier_fillings_url
    click_on "New Tier Filling"

    fill_in "Filling", with: @tier_filling.Filling_id
    fill_in "Tier", with: @tier_filling.Tier_id
    click_on "Create Tier filling"

    assert_text "Tier filling was successfully created"
    click_on "Back"
  end

  test "updating a Tier filling" do
    visit tier_fillings_url
    click_on "Edit", match: :first

    fill_in "Filling", with: @tier_filling.Filling_id
    fill_in "Tier", with: @tier_filling.Tier_id
    click_on "Update Tier filling"

    assert_text "Tier filling was successfully updated"
    click_on "Back"
  end

  test "destroying a Tier filling" do
    visit tier_fillings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tier filling was successfully destroyed"
  end
end
