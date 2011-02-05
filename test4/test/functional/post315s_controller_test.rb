require 'test_helper'

class Post315sControllerTest < ActionController::TestCase
  setup do
    @post315 = post315s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post315s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post315" do
    assert_difference('Post315.count') do
      post :create, :post315 => @post315.attributes
    end

    assert_redirected_to post315_path(assigns(:post315))
  end

  test "should show post315" do
    get :show, :id => @post315.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post315.to_param
    assert_response :success
  end

  test "should update post315" do
    put :update, :id => @post315.to_param, :post315 => @post315.attributes
    assert_redirected_to post315_path(assigns(:post315))
  end

  test "should destroy post315" do
    assert_difference('Post315.count', -1) do
      delete :destroy, :id => @post315.to_param
    end

    assert_redirected_to post315s_path
  end
end
