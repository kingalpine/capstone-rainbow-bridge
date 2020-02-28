require 'test_helper'

class FillingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @filling = fillings(:one)
  end

  test "should get index" do
    get fillings_url
    assert_response :success
  end

  test "should get new" do
    get new_filling_url
    assert_response :success
  end

  test "should create filling" do
    assert_difference('Filling.count') do
      post fillings_url, params: { filling: { Filling_Description: @filling.Filling_Description, Filling_Name: @filling.Filling_Name } }
    end

    assert_redirected_to filling_url(Filling.last)
  end

  test "should show filling" do
    get filling_url(@filling)
    assert_response :success
  end

  test "should get edit" do
    get edit_filling_url(@filling)
    assert_response :success
  end

  test "should update filling" do
    patch filling_url(@filling), params: { filling: { Filling_Description: @filling.Filling_Description, Filling_Name: @filling.Filling_Name } }
    assert_redirected_to filling_url(@filling)
  end

  test "should destroy filling" do
    assert_difference('Filling.count', -1) do
      delete filling_url(@filling)
    end

    assert_redirected_to fillings_url
  end
end
