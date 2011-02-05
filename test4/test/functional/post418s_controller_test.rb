require 'test_helper'

class Post418sControllerTest < ActionController::TestCase
  setup do
    @post418 = post418s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post418s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post418" do
    assert_difference('Post418.count') do
      post :create, :post418 => @post418.attributes
    end

    assert_redirected_to post418_path(assigns(:post418))
  end

  test "should show post418" do
    get :show, :id => @post418.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post418.to_param
    assert_response :success
  end

  test "should update post418" do
    put :update, :id => @post418.to_param, :post418 => @post418.attributes
    assert_redirected_to post418_path(assigns(:post418))
  end

  test "should destroy post418" do
    assert_difference('Post418.count', -1) do
      delete :destroy, :id => @post418.to_param
    end

    assert_redirected_to post418s_path
  end
end
