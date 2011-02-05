require 'test_helper'

class Post168sControllerTest < ActionController::TestCase
  setup do
    @post168 = post168s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post168s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post168" do
    assert_difference('Post168.count') do
      post :create, :post168 => @post168.attributes
    end

    assert_redirected_to post168_path(assigns(:post168))
  end

  test "should show post168" do
    get :show, :id => @post168.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post168.to_param
    assert_response :success
  end

  test "should update post168" do
    put :update, :id => @post168.to_param, :post168 => @post168.attributes
    assert_redirected_to post168_path(assigns(:post168))
  end

  test "should destroy post168" do
    assert_difference('Post168.count', -1) do
      delete :destroy, :id => @post168.to_param
    end

    assert_redirected_to post168s_path
  end
end
