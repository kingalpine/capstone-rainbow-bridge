require 'test_helper'

class CakeFlavorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake_flavor = cake_flavors(:one)
  end

  test "should get index" do
    get cake_flavors_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_flavor_url
    assert_response :success
  end

  test "should create cake_flavor" do
    assert_difference('CakeFlavor.count') do
      post cake_flavors_url, params: { cake_flavor: { Cake_Name: @cake_flavor.Cake_Name } }
    end

    assert_redirected_to cake_flavor_url(CakeFlavor.last)
  end

  test "should show cake_flavor" do
    get cake_flavor_url(@cake_flavor)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_flavor_url(@cake_flavor)
    assert_response :success
  end

  test "should update cake_flavor" do
    patch cake_flavor_url(@cake_flavor), params: { cake_flavor: { Cake_Name: @cake_flavor.Cake_Name } }
    assert_redirected_to cake_flavor_url(@cake_flavor)
  end

  test "should destroy cake_flavor" do
    assert_difference('CakeFlavor.count', -1) do
      delete cake_flavor_url(@cake_flavor)
    end

    assert_redirected_to cake_flavors_url
  end
end
