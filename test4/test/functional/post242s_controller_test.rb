require 'test_helper'

class Post242sControllerTest < ActionController::TestCase
  setup do
    @post242 = post242s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post242s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post242" do
    assert_difference('Post242.count') do
      post :create, :post242 => @post242.attributes
    end

    assert_redirected_to post242_path(assigns(:post242))
  end

  test "should show post242" do
    get :show, :id => @post242.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post242.to_param
    assert_response :success
  end

  test "should update post242" do
    put :update, :id => @post242.to_param, :post242 => @post242.attributes
    assert_redirected_to post242_path(assigns(:post242))
  end

  test "should destroy post242" do
    assert_difference('Post242.count', -1) do
      delete :destroy, :id => @post242.to_param
    end

    assert_redirected_to post242s_path
  end
end
