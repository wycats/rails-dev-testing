require 'test_helper'

class Post458sControllerTest < ActionController::TestCase
  setup do
    @post458 = post458s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post458s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post458" do
    assert_difference('Post458.count') do
      post :create, :post458 => @post458.attributes
    end

    assert_redirected_to post458_path(assigns(:post458))
  end

  test "should show post458" do
    get :show, :id => @post458.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post458.to_param
    assert_response :success
  end

  test "should update post458" do
    put :update, :id => @post458.to_param, :post458 => @post458.attributes
    assert_redirected_to post458_path(assigns(:post458))
  end

  test "should destroy post458" do
    assert_difference('Post458.count', -1) do
      delete :destroy, :id => @post458.to_param
    end

    assert_redirected_to post458s_path
  end
end
