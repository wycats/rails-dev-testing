require 'test_helper'

class Post120sControllerTest < ActionController::TestCase
  setup do
    @post120 = post120s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post120s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post120" do
    assert_difference('Post120.count') do
      post :create, :post120 => @post120.attributes
    end

    assert_redirected_to post120_path(assigns(:post120))
  end

  test "should show post120" do
    get :show, :id => @post120.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post120.to_param
    assert_response :success
  end

  test "should update post120" do
    put :update, :id => @post120.to_param, :post120 => @post120.attributes
    assert_redirected_to post120_path(assigns(:post120))
  end

  test "should destroy post120" do
    assert_difference('Post120.count', -1) do
      delete :destroy, :id => @post120.to_param
    end

    assert_redirected_to post120s_path
  end
end
