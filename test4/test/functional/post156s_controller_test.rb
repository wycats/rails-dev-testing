require 'test_helper'

class Post156sControllerTest < ActionController::TestCase
  setup do
    @post156 = post156s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post156s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post156" do
    assert_difference('Post156.count') do
      post :create, :post156 => @post156.attributes
    end

    assert_redirected_to post156_path(assigns(:post156))
  end

  test "should show post156" do
    get :show, :id => @post156.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post156.to_param
    assert_response :success
  end

  test "should update post156" do
    put :update, :id => @post156.to_param, :post156 => @post156.attributes
    assert_redirected_to post156_path(assigns(:post156))
  end

  test "should destroy post156" do
    assert_difference('Post156.count', -1) do
      delete :destroy, :id => @post156.to_param
    end

    assert_redirected_to post156s_path
  end
end
