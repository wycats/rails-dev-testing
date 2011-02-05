require 'test_helper'

class Post4sControllerTest < ActionController::TestCase
  setup do
    @post4 = post4s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post4s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post4" do
    assert_difference('Post4.count') do
      post :create, :post4 => @post4.attributes
    end

    assert_redirected_to post4_path(assigns(:post4))
  end

  test "should show post4" do
    get :show, :id => @post4.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post4.to_param
    assert_response :success
  end

  test "should update post4" do
    put :update, :id => @post4.to_param, :post4 => @post4.attributes
    assert_redirected_to post4_path(assigns(:post4))
  end

  test "should destroy post4" do
    assert_difference('Post4.count', -1) do
      delete :destroy, :id => @post4.to_param
    end

    assert_redirected_to post4s_path
  end
end
