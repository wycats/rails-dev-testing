require 'test_helper'

class Post45sControllerTest < ActionController::TestCase
  setup do
    @post45 = post45s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post45s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post45" do
    assert_difference('Post45.count') do
      post :create, :post45 => @post45.attributes
    end

    assert_redirected_to post45_path(assigns(:post45))
  end

  test "should show post45" do
    get :show, :id => @post45.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post45.to_param
    assert_response :success
  end

  test "should update post45" do
    put :update, :id => @post45.to_param, :post45 => @post45.attributes
    assert_redirected_to post45_path(assigns(:post45))
  end

  test "should destroy post45" do
    assert_difference('Post45.count', -1) do
      delete :destroy, :id => @post45.to_param
    end

    assert_redirected_to post45s_path
  end
end
