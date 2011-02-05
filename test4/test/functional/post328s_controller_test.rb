require 'test_helper'

class Post328sControllerTest < ActionController::TestCase
  setup do
    @post328 = post328s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post328s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post328" do
    assert_difference('Post328.count') do
      post :create, :post328 => @post328.attributes
    end

    assert_redirected_to post328_path(assigns(:post328))
  end

  test "should show post328" do
    get :show, :id => @post328.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post328.to_param
    assert_response :success
  end

  test "should update post328" do
    put :update, :id => @post328.to_param, :post328 => @post328.attributes
    assert_redirected_to post328_path(assigns(:post328))
  end

  test "should destroy post328" do
    assert_difference('Post328.count', -1) do
      delete :destroy, :id => @post328.to_param
    end

    assert_redirected_to post328s_path
  end
end
