require 'test_helper'

class Post41sControllerTest < ActionController::TestCase
  setup do
    @post41 = post41s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post41s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post41" do
    assert_difference('Post41.count') do
      post :create, :post41 => @post41.attributes
    end

    assert_redirected_to post41_path(assigns(:post41))
  end

  test "should show post41" do
    get :show, :id => @post41.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post41.to_param
    assert_response :success
  end

  test "should update post41" do
    put :update, :id => @post41.to_param, :post41 => @post41.attributes
    assert_redirected_to post41_path(assigns(:post41))
  end

  test "should destroy post41" do
    assert_difference('Post41.count', -1) do
      delete :destroy, :id => @post41.to_param
    end

    assert_redirected_to post41s_path
  end
end
