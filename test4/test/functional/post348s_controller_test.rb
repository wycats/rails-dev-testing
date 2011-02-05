require 'test_helper'

class Post348sControllerTest < ActionController::TestCase
  setup do
    @post348 = post348s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post348s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post348" do
    assert_difference('Post348.count') do
      post :create, :post348 => @post348.attributes
    end

    assert_redirected_to post348_path(assigns(:post348))
  end

  test "should show post348" do
    get :show, :id => @post348.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post348.to_param
    assert_response :success
  end

  test "should update post348" do
    put :update, :id => @post348.to_param, :post348 => @post348.attributes
    assert_redirected_to post348_path(assigns(:post348))
  end

  test "should destroy post348" do
    assert_difference('Post348.count', -1) do
      delete :destroy, :id => @post348.to_param
    end

    assert_redirected_to post348s_path
  end
end
