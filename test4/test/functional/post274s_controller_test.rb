require 'test_helper'

class Post274sControllerTest < ActionController::TestCase
  setup do
    @post274 = post274s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post274s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post274" do
    assert_difference('Post274.count') do
      post :create, :post274 => @post274.attributes
    end

    assert_redirected_to post274_path(assigns(:post274))
  end

  test "should show post274" do
    get :show, :id => @post274.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post274.to_param
    assert_response :success
  end

  test "should update post274" do
    put :update, :id => @post274.to_param, :post274 => @post274.attributes
    assert_redirected_to post274_path(assigns(:post274))
  end

  test "should destroy post274" do
    assert_difference('Post274.count', -1) do
      delete :destroy, :id => @post274.to_param
    end

    assert_redirected_to post274s_path
  end
end
