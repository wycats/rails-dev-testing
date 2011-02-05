require 'test_helper'

class Post33sControllerTest < ActionController::TestCase
  setup do
    @post33 = post33s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post33s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post33" do
    assert_difference('Post33.count') do
      post :create, :post33 => @post33.attributes
    end

    assert_redirected_to post33_path(assigns(:post33))
  end

  test "should show post33" do
    get :show, :id => @post33.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post33.to_param
    assert_response :success
  end

  test "should update post33" do
    put :update, :id => @post33.to_param, :post33 => @post33.attributes
    assert_redirected_to post33_path(assigns(:post33))
  end

  test "should destroy post33" do
    assert_difference('Post33.count', -1) do
      delete :destroy, :id => @post33.to_param
    end

    assert_redirected_to post33s_path
  end
end
