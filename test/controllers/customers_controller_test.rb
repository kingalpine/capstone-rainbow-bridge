require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { Customer_City: @customer.Customer_City, Customer_Email: @customer.Customer_Email, Customer_First_Name: @customer.Customer_First_Name, Customer_Last_Name: @customer.Customer_Last_Name, Customer_Phone: @customer.Customer_Phone, Customer_State: @customer.Customer_State, Customer_Status_id: @customer.Customer_Status_id, Customer_Street_Address: @customer.Customer_Street_Address, Customer_Zip_Code: @customer.Customer_Zip_Code, string: @customer.string } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { Customer_City: @customer.Customer_City, Customer_Email: @customer.Customer_Email, Customer_First_Name: @customer.Customer_First_Name, Customer_Last_Name: @customer.Customer_Last_Name, Customer_Phone: @customer.Customer_Phone, Customer_State: @customer.Customer_State, Customer_Status_id: @customer.Customer_Status_id, Customer_Street_Address: @customer.Customer_Street_Address, Customer_Zip_Code: @customer.Customer_Zip_Code, string: @customer.string } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
