require 'test_helper'

class Post317sControllerTest < ActionController::TestCase
  setup do
    @post317 = post317s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post317s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post317" do
    assert_difference('Post317.count') do
      post :create, :post317 => @post317.attributes
    end

    assert_redirected_to post317_path(assigns(:post317))
  end

  test "should show post317" do
    get :show, :id => @post317.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post317.to_param
    assert_response :success
  end

  test "should update post317" do
    put :update, :id => @post317.to_param, :post317 => @post317.attributes
    assert_redirected_to post317_path(assigns(:post317))
  end

  test "should destroy post317" do
    assert_difference('Post317.count', -1) do
      delete :destroy, :id => @post317.to_param
    end

    assert_redirected_to post317s_path
  end
end
