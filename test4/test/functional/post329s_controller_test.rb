require 'test_helper'

class Post329sControllerTest < ActionController::TestCase
  setup do
    @post329 = post329s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post329s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post329" do
    assert_difference('Post329.count') do
      post :create, :post329 => @post329.attributes
    end

    assert_redirected_to post329_path(assigns(:post329))
  end

  test "should show post329" do
    get :show, :id => @post329.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post329.to_param
    assert_response :success
  end

  test "should update post329" do
    put :update, :id => @post329.to_param, :post329 => @post329.attributes
    assert_redirected_to post329_path(assigns(:post329))
  end

  test "should destroy post329" do
    assert_difference('Post329.count', -1) do
      delete :destroy, :id => @post329.to_param
    end

    assert_redirected_to post329s_path
  end
end
