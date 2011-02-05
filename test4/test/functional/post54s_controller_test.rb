require 'test_helper'

class Post54sControllerTest < ActionController::TestCase
  setup do
    @post54 = post54s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post54s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post54" do
    assert_difference('Post54.count') do
      post :create, :post54 => @post54.attributes
    end

    assert_redirected_to post54_path(assigns(:post54))
  end

  test "should show post54" do
    get :show, :id => @post54.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post54.to_param
    assert_response :success
  end

  test "should update post54" do
    put :update, :id => @post54.to_param, :post54 => @post54.attributes
    assert_redirected_to post54_path(assigns(:post54))
  end

  test "should destroy post54" do
    assert_difference('Post54.count', -1) do
      delete :destroy, :id => @post54.to_param
    end

    assert_redirected_to post54s_path
  end
end
