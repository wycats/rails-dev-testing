require 'test_helper'

class Post386sControllerTest < ActionController::TestCase
  setup do
    @post386 = post386s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post386s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post386" do
    assert_difference('Post386.count') do
      post :create, :post386 => @post386.attributes
    end

    assert_redirected_to post386_path(assigns(:post386))
  end

  test "should show post386" do
    get :show, :id => @post386.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post386.to_param
    assert_response :success
  end

  test "should update post386" do
    put :update, :id => @post386.to_param, :post386 => @post386.attributes
    assert_redirected_to post386_path(assigns(:post386))
  end

  test "should destroy post386" do
    assert_difference('Post386.count', -1) do
      delete :destroy, :id => @post386.to_param
    end

    assert_redirected_to post386s_path
  end
end
