require 'test_helper'

class OrderLineRestrictionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_line_restriction = order_line_restrictions(:one)
  end

  test "should get index" do
    get order_line_restrictions_url
    assert_response :success
  end

  test "should get new" do
    get new_order_line_restriction_url
    assert_response :success
  end

  test "should create order_line_restriction" do
    assert_difference('OrderLineRestriction.count') do
      post order_line_restrictions_url, params: { order_line_restriction: { Dietary_Restriction_id: @order_line_restriction.Dietary_Restriction_id, Order_Line_id: @order_line_restriction.Order_Line_id } }
    end

    assert_redirected_to order_line_restriction_url(OrderLineRestriction.last)
  end

  test "should show order_line_restriction" do
    get order_line_restriction_url(@order_line_restriction)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_line_restriction_url(@order_line_restriction)
    assert_response :success
  end

  test "should update order_line_restriction" do
    patch order_line_restriction_url(@order_line_restriction), params: { order_line_restriction: { Dietary_Restriction_id: @order_line_restriction.Dietary_Restriction_id, Order_Line_id: @order_line_restriction.Order_Line_id } }
    assert_redirected_to order_line_restriction_url(@order_line_restriction)
  end

  test "should destroy order_line_restriction" do
    assert_difference('OrderLineRestriction.count', -1) do
      delete order_line_restriction_url(@order_line_restriction)
    end

    assert_redirected_to order_line_restrictions_url
  end
end
