require 'test_helper'

class RentalLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_line = rental_lines(:one)
  end

  test "should get index" do
    get rental_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_line_url
    assert_response :success
  end

  test "should create rental_line" do
    assert_difference('RentalLine.count') do
      post rental_lines_url, params: { rental_line: { Order_id: @rental_line.Order_id, Rental_Item_id: @rental_line.Rental_Item_id } }
    end

    assert_redirected_to rental_line_url(RentalLine.last)
  end

  test "should show rental_line" do
    get rental_line_url(@rental_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_line_url(@rental_line)
    assert_response :success
  end

  test "should update rental_line" do
    patch rental_line_url(@rental_line), params: { rental_line: { Order_id: @rental_line.Order_id, Rental_Item_id: @rental_line.Rental_Item_id } }
    assert_redirected_to rental_line_url(@rental_line)
  end

  test "should destroy rental_line" do
    assert_difference('RentalLine.count', -1) do
      delete rental_line_url(@rental_line)
    end

    assert_redirected_to rental_lines_url
  end
end
