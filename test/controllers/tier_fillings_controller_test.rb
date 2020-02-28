require 'test_helper'

class TierFillingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tier_filling = tier_fillings(:one)
  end

  test "should get index" do
    get tier_fillings_url
    assert_response :success
  end

  test "should get new" do
    get new_tier_filling_url
    assert_response :success
  end

  test "should create tier_filling" do
    assert_difference('TierFilling.count') do
      post tier_fillings_url, params: { tier_filling: { Filling_id: @tier_filling.Filling_id, Tier_id: @tier_filling.Tier_id } }
    end

    assert_redirected_to tier_filling_url(TierFilling.last)
  end

  test "should show tier_filling" do
    get tier_filling_url(@tier_filling)
    assert_response :success
  end

  test "should get edit" do
    get edit_tier_filling_url(@tier_filling)
    assert_response :success
  end

  test "should update tier_filling" do
    patch tier_filling_url(@tier_filling), params: { tier_filling: { Filling_id: @tier_filling.Filling_id, Tier_id: @tier_filling.Tier_id } }
    assert_redirected_to tier_filling_url(@tier_filling)
  end

  test "should destroy tier_filling" do
    assert_difference('TierFilling.count', -1) do
      delete tier_filling_url(@tier_filling)
    end

    assert_redirected_to tier_fillings_url
  end
end
