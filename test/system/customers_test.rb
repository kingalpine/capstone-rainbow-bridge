require "application_system_test_case"

class CustomersTest < ApplicationSystemTestCase
  setup do
    @customer = customers(:one)
  end

  test "visiting the index" do
    visit customers_url
    assert_selector "h1", text: "Customers"
  end

  test "creating a Customer" do
    visit customers_url
    click_on "New Customer"

    fill_in "Customer city", with: @customer.Customer_City
    fill_in "Customer email", with: @customer.Customer_Email
    fill_in "Customer first name", with: @customer.Customer_First_Name
    fill_in "Customer last name", with: @customer.Customer_Last_Name
    fill_in "Customer phone", with: @customer.Customer_Phone
    fill_in "Customer state", with: @customer.Customer_State
    fill_in "Customer status", with: @customer.Customer_Status_id
    fill_in "Customer street address", with: @customer.Customer_Street_Address
    fill_in "Customer zip code", with: @customer.Customer_Zip_Code
    fill_in "String", with: @customer.string
    click_on "Create Customer"

    assert_text "Customer was successfully created"
    click_on "Back"
  end

  test "updating a Customer" do
    visit customers_url
    click_on "Edit", match: :first

    fill_in "Customer city", with: @customer.Customer_City
    fill_in "Customer email", with: @customer.Customer_Email
    fill_in "Customer first name", with: @customer.Customer_First_Name
    fill_in "Customer last name", with: @customer.Customer_Last_Name
    fill_in "Customer phone", with: @customer.Customer_Phone
    fill_in "Customer state", with: @customer.Customer_State
    fill_in "Customer status", with: @customer.Customer_Status_id
    fill_in "Customer street address", with: @customer.Customer_Street_Address
    fill_in "Customer zip code", with: @customer.Customer_Zip_Code
    fill_in "String", with: @customer.string
    click_on "Update Customer"

    assert_text "Customer was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer" do
    visit customers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer was successfully destroyed"
  end
end
