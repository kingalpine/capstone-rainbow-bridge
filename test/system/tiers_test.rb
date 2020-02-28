require "application_system_test_case"

class TiersTest < ApplicationSystemTestCase
  setup do
    @tier = tiers(:one)
  end

  test "visiting the index" do
    visit tiers_url
    assert_selector "h1", text: "Tiers"
  end

  test "creating a Tier" do
    visit tiers_url
    click_on "New Tier"

    fill_in "Cake flavor", with: @tier.Cake_Flavor_id
    fill_in "Frosting flavor", with: @tier.Frosting_Flavor_id
    fill_in "Order line", with: @tier.Order_Line_id
    fill_in "Position", with: @tier.Position
    fill_in "Shape", with: @tier.Shape_id
    fill_in "Tier size", with: @tier.Tier_Size
    fill_in "Tier special notes", with: @tier.Tier_Special_Notes
    click_on "Create Tier"

    assert_text "Tier was successfully created"
    click_on "Back"
  end

  test "updating a Tier" do
    visit tiers_url
    click_on "Edit", match: :first

    fill_in "Cake flavor", with: @tier.Cake_Flavor_id
    fill_in "Frosting flavor", with: @tier.Frosting_Flavor_id
    fill_in "Order line", with: @tier.Order_Line_id
    fill_in "Position", with: @tier.Position
    fill_in "Shape", with: @tier.Shape_id
    fill_in "Tier size", with: @tier.Tier_Size
    fill_in "Tier special notes", with: @tier.Tier_Special_Notes
    click_on "Update Tier"

    assert_text "Tier was successfully updated"
    click_on "Back"
  end

  test "destroying a Tier" do
    visit tiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tier was successfully destroyed"
  end
end
