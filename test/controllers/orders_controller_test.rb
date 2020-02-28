require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { Customer_id: @order.Customer_id, Order_Cost: @order.Order_Cost, Order_Date_Finish: @order.Order_Date_Finish, Order_Delivery: @order.Order_Delivery, Order_Description: @order.Order_Description, Order_Due_Date: @order.Order_Due_Date, Order_Start_Date: @order.Order_Start_Date, Order_Status_id: @order.Order_Status_id, Order_Type_id: @order.Order_Type_id, Rental_Order_id: @order.Rental_Order_id, Venue_City: @order.Venue_City, Venue_State: @order.Venue_State, Venue_Street_Address: @order.Venue_Street_Address, Venue_Zip: @order.Venue_Zip } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { Customer_id: @order.Customer_id, Order_Cost: @order.Order_Cost, Order_Date_Finish: @order.Order_Date_Finish, Order_Delivery: @order.Order_Delivery, Order_Description: @order.Order_Description, Order_Due_Date: @order.Order_Due_Date, Order_Start_Date: @order.Order_Start_Date, Order_Status_id: @order.Order_Status_id, Order_Type_id: @order.Order_Type_id, Rental_Order_id: @order.Rental_Order_id, Venue_City: @order.Venue_City, Venue_State: @order.Venue_State, Venue_Street_Address: @order.Venue_Street_Address, Venue_Zip: @order.Venue_Zip } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
