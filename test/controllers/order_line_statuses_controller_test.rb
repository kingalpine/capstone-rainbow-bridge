require 'test_helper'

class OrderLineStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_line_status = order_line_statuses(:one)
  end

  test "should get index" do
    get order_line_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_order_line_status_url
    assert_response :success
  end

  test "should create order_line_status" do
    assert_difference('OrderLineStatus.count') do
      post order_line_statuses_url, params: { order_line_status: { Order_Line_Status_Name: @order_line_status.Order_Line_Status_Name } }
    end

    assert_redirected_to order_line_status_url(OrderLineStatus.last)
  end

  test "should show order_line_status" do
    get order_line_status_url(@order_line_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_line_status_url(@order_line_status)
    assert_response :success
  end

  test "should update order_line_status" do
    patch order_line_status_url(@order_line_status), params: { order_line_status: { Order_Line_Status_Name: @order_line_status.Order_Line_Status_Name } }
    assert_redirected_to order_line_status_url(@order_line_status)
  end

  test "should destroy order_line_status" do
    assert_difference('OrderLineStatus.count', -1) do
      delete order_line_status_url(@order_line_status)
    end

    assert_redirected_to order_line_statuses_url
  end
end
