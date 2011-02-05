require 'test_helper'

class Post88sControllerTest < ActionController::TestCase
  setup do
    @post88 = post88s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post88s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post88" do
    assert_difference('Post88.count') do
      post :create, :post88 => @post88.attributes
    end

    assert_redirected_to post88_path(assigns(:post88))
  end

  test "should show post88" do
    get :show, :id => @post88.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post88.to_param
    assert_response :success
  end

  test "should update post88" do
    put :update, :id => @post88.to_param, :post88 => @post88.attributes
    assert_redirected_to post88_path(assigns(:post88))
  end

  test "should destroy post88" do
    assert_difference('Post88.count', -1) do
      delete :destroy, :id => @post88.to_param
    end

    assert_redirected_to post88s_path
  end
end
