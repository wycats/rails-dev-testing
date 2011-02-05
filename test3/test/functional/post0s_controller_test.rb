require 'test_helper'

class Post0sControllerTest < ActionController::TestCase
  setup do
    @post0 = post0s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post0s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post0" do
    assert_difference('Post0.count') do
      post :create, :post0 => @post0.attributes
    end

    assert_redirected_to post0_path(assigns(:post0))
  end

  test "should show post0" do
    get :show, :id => @post0.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post0.to_param
    assert_response :success
  end

  test "should update post0" do
    put :update, :id => @post0.to_param, :post0 => @post0.attributes
    assert_redirected_to post0_path(assigns(:post0))
  end

  test "should destroy post0" do
    assert_difference('Post0.count', -1) do
      delete :destroy, :id => @post0.to_param
    end

    assert_redirected_to post0s_path
  end
end
