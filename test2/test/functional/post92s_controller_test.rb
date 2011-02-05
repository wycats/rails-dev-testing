require 'test_helper'

class Post92sControllerTest < ActionController::TestCase
  setup do
    @post92 = post92s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post92s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post92" do
    assert_difference('Post92.count') do
      post :create, :post92 => @post92.attributes
    end

    assert_redirected_to post92_path(assigns(:post92))
  end

  test "should show post92" do
    get :show, :id => @post92.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post92.to_param
    assert_response :success
  end

  test "should update post92" do
    put :update, :id => @post92.to_param, :post92 => @post92.attributes
    assert_redirected_to post92_path(assigns(:post92))
  end

  test "should destroy post92" do
    assert_difference('Post92.count', -1) do
      delete :destroy, :id => @post92.to_param
    end

    assert_redirected_to post92s_path
  end
end
