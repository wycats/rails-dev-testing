require 'test_helper'

class Post178sControllerTest < ActionController::TestCase
  setup do
    @post178 = post178s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post178s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post178" do
    assert_difference('Post178.count') do
      post :create, :post178 => @post178.attributes
    end

    assert_redirected_to post178_path(assigns(:post178))
  end

  test "should show post178" do
    get :show, :id => @post178.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post178.to_param
    assert_response :success
  end

  test "should update post178" do
    put :update, :id => @post178.to_param, :post178 => @post178.attributes
    assert_redirected_to post178_path(assigns(:post178))
  end

  test "should destroy post178" do
    assert_difference('Post178.count', -1) do
      delete :destroy, :id => @post178.to_param
    end

    assert_redirected_to post178s_path
  end
end
