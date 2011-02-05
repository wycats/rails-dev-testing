require 'test_helper'

class Post378sControllerTest < ActionController::TestCase
  setup do
    @post378 = post378s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post378s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post378" do
    assert_difference('Post378.count') do
      post :create, :post378 => @post378.attributes
    end

    assert_redirected_to post378_path(assigns(:post378))
  end

  test "should show post378" do
    get :show, :id => @post378.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post378.to_param
    assert_response :success
  end

  test "should update post378" do
    put :update, :id => @post378.to_param, :post378 => @post378.attributes
    assert_redirected_to post378_path(assigns(:post378))
  end

  test "should destroy post378" do
    assert_difference('Post378.count', -1) do
      delete :destroy, :id => @post378.to_param
    end

    assert_redirected_to post378s_path
  end
end
