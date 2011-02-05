require 'test_helper'

class Post382sControllerTest < ActionController::TestCase
  setup do
    @post382 = post382s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post382s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post382" do
    assert_difference('Post382.count') do
      post :create, :post382 => @post382.attributes
    end

    assert_redirected_to post382_path(assigns(:post382))
  end

  test "should show post382" do
    get :show, :id => @post382.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post382.to_param
    assert_response :success
  end

  test "should update post382" do
    put :update, :id => @post382.to_param, :post382 => @post382.attributes
    assert_redirected_to post382_path(assigns(:post382))
  end

  test "should destroy post382" do
    assert_difference('Post382.count', -1) do
      delete :destroy, :id => @post382.to_param
    end

    assert_redirected_to post382s_path
  end
end
