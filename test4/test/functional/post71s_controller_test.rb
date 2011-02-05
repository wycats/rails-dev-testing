require 'test_helper'

class Post71sControllerTest < ActionController::TestCase
  setup do
    @post71 = post71s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post71s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post71" do
    assert_difference('Post71.count') do
      post :create, :post71 => @post71.attributes
    end

    assert_redirected_to post71_path(assigns(:post71))
  end

  test "should show post71" do
    get :show, :id => @post71.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post71.to_param
    assert_response :success
  end

  test "should update post71" do
    put :update, :id => @post71.to_param, :post71 => @post71.attributes
    assert_redirected_to post71_path(assigns(:post71))
  end

  test "should destroy post71" do
    assert_difference('Post71.count', -1) do
      delete :destroy, :id => @post71.to_param
    end

    assert_redirected_to post71s_path
  end
end
