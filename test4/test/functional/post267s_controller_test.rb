require 'test_helper'

class Post267sControllerTest < ActionController::TestCase
  setup do
    @post267 = post267s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post267s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post267" do
    assert_difference('Post267.count') do
      post :create, :post267 => @post267.attributes
    end

    assert_redirected_to post267_path(assigns(:post267))
  end

  test "should show post267" do
    get :show, :id => @post267.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post267.to_param
    assert_response :success
  end

  test "should update post267" do
    put :update, :id => @post267.to_param, :post267 => @post267.attributes
    assert_redirected_to post267_path(assigns(:post267))
  end

  test "should destroy post267" do
    assert_difference('Post267.count', -1) do
      delete :destroy, :id => @post267.to_param
    end

    assert_redirected_to post267s_path
  end
end
