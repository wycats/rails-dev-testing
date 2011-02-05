require 'test_helper'

class Post254sControllerTest < ActionController::TestCase
  setup do
    @post254 = post254s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post254s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post254" do
    assert_difference('Post254.count') do
      post :create, :post254 => @post254.attributes
    end

    assert_redirected_to post254_path(assigns(:post254))
  end

  test "should show post254" do
    get :show, :id => @post254.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post254.to_param
    assert_response :success
  end

  test "should update post254" do
    put :update, :id => @post254.to_param, :post254 => @post254.attributes
    assert_redirected_to post254_path(assigns(:post254))
  end

  test "should destroy post254" do
    assert_difference('Post254.count', -1) do
      delete :destroy, :id => @post254.to_param
    end

    assert_redirected_to post254s_path
  end
end
