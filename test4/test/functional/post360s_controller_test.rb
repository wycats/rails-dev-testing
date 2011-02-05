require 'test_helper'

class Post360sControllerTest < ActionController::TestCase
  setup do
    @post360 = post360s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post360s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post360" do
    assert_difference('Post360.count') do
      post :create, :post360 => @post360.attributes
    end

    assert_redirected_to post360_path(assigns(:post360))
  end

  test "should show post360" do
    get :show, :id => @post360.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post360.to_param
    assert_response :success
  end

  test "should update post360" do
    put :update, :id => @post360.to_param, :post360 => @post360.attributes
    assert_redirected_to post360_path(assigns(:post360))
  end

  test "should destroy post360" do
    assert_difference('Post360.count', -1) do
      delete :destroy, :id => @post360.to_param
    end

    assert_redirected_to post360s_path
  end
end
