require 'test_helper'

class Post221sControllerTest < ActionController::TestCase
  setup do
    @post221 = post221s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post221s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post221" do
    assert_difference('Post221.count') do
      post :create, :post221 => @post221.attributes
    end

    assert_redirected_to post221_path(assigns(:post221))
  end

  test "should show post221" do
    get :show, :id => @post221.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post221.to_param
    assert_response :success
  end

  test "should update post221" do
    put :update, :id => @post221.to_param, :post221 => @post221.attributes
    assert_redirected_to post221_path(assigns(:post221))
  end

  test "should destroy post221" do
    assert_difference('Post221.count', -1) do
      delete :destroy, :id => @post221.to_param
    end

    assert_redirected_to post221s_path
  end
end
