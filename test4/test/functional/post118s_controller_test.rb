require 'test_helper'

class Post118sControllerTest < ActionController::TestCase
  setup do
    @post118 = post118s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post118s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post118" do
    assert_difference('Post118.count') do
      post :create, :post118 => @post118.attributes
    end

    assert_redirected_to post118_path(assigns(:post118))
  end

  test "should show post118" do
    get :show, :id => @post118.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post118.to_param
    assert_response :success
  end

  test "should update post118" do
    put :update, :id => @post118.to_param, :post118 => @post118.attributes
    assert_redirected_to post118_path(assigns(:post118))
  end

  test "should destroy post118" do
    assert_difference('Post118.count', -1) do
      delete :destroy, :id => @post118.to_param
    end

    assert_redirected_to post118s_path
  end
end
