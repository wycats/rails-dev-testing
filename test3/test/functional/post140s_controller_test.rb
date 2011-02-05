require 'test_helper'

class Post140sControllerTest < ActionController::TestCase
  setup do
    @post140 = post140s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post140s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post140" do
    assert_difference('Post140.count') do
      post :create, :post140 => @post140.attributes
    end

    assert_redirected_to post140_path(assigns(:post140))
  end

  test "should show post140" do
    get :show, :id => @post140.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post140.to_param
    assert_response :success
  end

  test "should update post140" do
    put :update, :id => @post140.to_param, :post140 => @post140.attributes
    assert_redirected_to post140_path(assigns(:post140))
  end

  test "should destroy post140" do
    assert_difference('Post140.count', -1) do
      delete :destroy, :id => @post140.to_param
    end

    assert_redirected_to post140s_path
  end
end
