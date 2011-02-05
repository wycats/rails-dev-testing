require 'test_helper'

class Post368sControllerTest < ActionController::TestCase
  setup do
    @post368 = post368s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post368s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post368" do
    assert_difference('Post368.count') do
      post :create, :post368 => @post368.attributes
    end

    assert_redirected_to post368_path(assigns(:post368))
  end

  test "should show post368" do
    get :show, :id => @post368.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post368.to_param
    assert_response :success
  end

  test "should update post368" do
    put :update, :id => @post368.to_param, :post368 => @post368.attributes
    assert_redirected_to post368_path(assigns(:post368))
  end

  test "should destroy post368" do
    assert_difference('Post368.count', -1) do
      delete :destroy, :id => @post368.to_param
    end

    assert_redirected_to post368s_path
  end
end
