require 'test_helper'

class LottoTypesControllerTest < ActionController::TestCase
  setup do
    @lotto_type = lotto_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lotto_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lotto_type" do
    assert_difference('LottoType.count') do
      post :create, :lotto_type => @lotto_type.attributes
    end

    assert_redirected_to lotto_type_path(assigns(:lotto_type))
  end

  test "should show lotto_type" do
    get :show, :id => @lotto_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lotto_type.to_param
    assert_response :success
  end

  test "should update lotto_type" do
    put :update, :id => @lotto_type.to_param, :lotto_type => @lotto_type.attributes
    assert_redirected_to lotto_type_path(assigns(:lotto_type))
  end

  test "should destroy lotto_type" do
    assert_difference('LottoType.count', -1) do
      delete :destroy, :id => @lotto_type.to_param
    end

    assert_redirected_to lotto_types_path
  end
end
