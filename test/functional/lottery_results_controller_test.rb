require 'test_helper'

class LotteryResultsControllerTest < ActionController::TestCase
  setup do
    @lottery_result = lottery_results(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lottery_results)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lottery_result" do
    assert_difference('LotteryResult.count') do
      post :create, :lottery_result => @lottery_result.attributes
    end

    assert_redirected_to lottery_result_path(assigns(:lottery_result))
  end

  test "should show lottery_result" do
    get :show, :id => @lottery_result.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @lottery_result.to_param
    assert_response :success
  end

  test "should update lottery_result" do
    put :update, :id => @lottery_result.to_param, :lottery_result => @lottery_result.attributes
    assert_redirected_to lottery_result_path(assigns(:lottery_result))
  end

  test "should destroy lottery_result" do
    assert_difference('LotteryResult.count', -1) do
      delete :destroy, :id => @lottery_result.to_param
    end

    assert_redirected_to lottery_results_path
  end
end
