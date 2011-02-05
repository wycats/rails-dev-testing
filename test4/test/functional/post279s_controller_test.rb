require 'test_helper'

class Post279sControllerTest < ActionController::TestCase
  setup do
    @post279 = post279s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post279s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post279" do
    assert_difference('Post279.count') do
      post :create, :post279 => @post279.attributes
    end

    assert_redirected_to post279_path(assigns(:post279))
  end

  test "should show post279" do
    get :show, :id => @post279.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post279.to_param
    assert_response :success
  end

  test "should update post279" do
    put :update, :id => @post279.to_param, :post279 => @post279.attributes
    assert_redirected_to post279_path(assigns(:post279))
  end

  test "should destroy post279" do
    assert_difference('Post279.count', -1) do
      delete :destroy, :id => @post279.to_param
    end

    assert_redirected_to post279s_path
  end
end
