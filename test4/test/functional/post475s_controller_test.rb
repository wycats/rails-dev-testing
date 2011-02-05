require 'test_helper'

class Post475sControllerTest < ActionController::TestCase
  setup do
    @post475 = post475s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post475s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post475" do
    assert_difference('Post475.count') do
      post :create, :post475 => @post475.attributes
    end

    assert_redirected_to post475_path(assigns(:post475))
  end

  test "should show post475" do
    get :show, :id => @post475.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post475.to_param
    assert_response :success
  end

  test "should update post475" do
    put :update, :id => @post475.to_param, :post475 => @post475.attributes
    assert_redirected_to post475_path(assigns(:post475))
  end

  test "should destroy post475" do
    assert_difference('Post475.count', -1) do
      delete :destroy, :id => @post475.to_param
    end

    assert_redirected_to post475s_path
  end
end
