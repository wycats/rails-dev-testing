require 'test_helper'

class Post77sControllerTest < ActionController::TestCase
  setup do
    @post77 = post77s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post77s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post77" do
    assert_difference('Post77.count') do
      post :create, :post77 => @post77.attributes
    end

    assert_redirected_to post77_path(assigns(:post77))
  end

  test "should show post77" do
    get :show, :id => @post77.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post77.to_param
    assert_response :success
  end

  test "should update post77" do
    put :update, :id => @post77.to_param, :post77 => @post77.attributes
    assert_redirected_to post77_path(assigns(:post77))
  end

  test "should destroy post77" do
    assert_difference('Post77.count', -1) do
      delete :destroy, :id => @post77.to_param
    end

    assert_redirected_to post77s_path
  end
end
