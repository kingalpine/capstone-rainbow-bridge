require 'test_helper'

class FrostingFlavorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @frosting_flavor = frosting_flavors(:one)
  end

  test "should get index" do
    get frosting_flavors_url
    assert_response :success
  end

  test "should get new" do
    get new_frosting_flavor_url
    assert_response :success
  end

  test "should create frosting_flavor" do
    assert_difference('FrostingFlavor.count') do
      post frosting_flavors_url, params: { frosting_flavor: { Frosting_Name: @frosting_flavor.Frosting_Name } }
    end

    assert_redirected_to frosting_flavor_url(FrostingFlavor.last)
  end

  test "should show frosting_flavor" do
    get frosting_flavor_url(@frosting_flavor)
    assert_response :success
  end

  test "should get edit" do
    get edit_frosting_flavor_url(@frosting_flavor)
    assert_response :success
  end

  test "should update frosting_flavor" do
    patch frosting_flavor_url(@frosting_flavor), params: { frosting_flavor: { Frosting_Name: @frosting_flavor.Frosting_Name } }
    assert_redirected_to frosting_flavor_url(@frosting_flavor)
  end

  test "should destroy frosting_flavor" do
    assert_difference('FrostingFlavor.count', -1) do
      delete frosting_flavor_url(@frosting_flavor)
    end

    assert_redirected_to frosting_flavors_url
  end
end
