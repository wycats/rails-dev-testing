require 'test_helper'

class Post150sControllerTest < ActionController::TestCase
  setup do
    @post150 = post150s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post150s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post150" do
    assert_difference('Post150.count') do
      post :create, :post150 => @post150.attributes
    end

    assert_redirected_to post150_path(assigns(:post150))
  end

  test "should show post150" do
    get :show, :id => @post150.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post150.to_param
    assert_response :success
  end

  test "should update post150" do
    put :update, :id => @post150.to_param, :post150 => @post150.attributes
    assert_redirected_to post150_path(assigns(:post150))
  end

  test "should destroy post150" do
    assert_difference('Post150.count', -1) do
      delete :destroy, :id => @post150.to_param
    end

    assert_redirected_to post150s_path
  end
end
