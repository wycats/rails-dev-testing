require 'test_helper'

class Post358sControllerTest < ActionController::TestCase
  setup do
    @post358 = post358s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post358s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post358" do
    assert_difference('Post358.count') do
      post :create, :post358 => @post358.attributes
    end

    assert_redirected_to post358_path(assigns(:post358))
  end

  test "should show post358" do
    get :show, :id => @post358.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post358.to_param
    assert_response :success
  end

  test "should update post358" do
    put :update, :id => @post358.to_param, :post358 => @post358.attributes
    assert_redirected_to post358_path(assigns(:post358))
  end

  test "should destroy post358" do
    assert_difference('Post358.count', -1) do
      delete :destroy, :id => @post358.to_param
    end

    assert_redirected_to post358s_path
  end
end
