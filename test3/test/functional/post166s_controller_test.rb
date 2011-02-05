require 'test_helper'

class Post166sControllerTest < ActionController::TestCase
  setup do
    @post166 = post166s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post166s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post166" do
    assert_difference('Post166.count') do
      post :create, :post166 => @post166.attributes
    end

    assert_redirected_to post166_path(assigns(:post166))
  end

  test "should show post166" do
    get :show, :id => @post166.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post166.to_param
    assert_response :success
  end

  test "should update post166" do
    put :update, :id => @post166.to_param, :post166 => @post166.attributes
    assert_redirected_to post166_path(assigns(:post166))
  end

  test "should destroy post166" do
    assert_difference('Post166.count', -1) do
      delete :destroy, :id => @post166.to_param
    end

    assert_redirected_to post166s_path
  end
end
