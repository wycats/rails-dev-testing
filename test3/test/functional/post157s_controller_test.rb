require 'test_helper'

class Post157sControllerTest < ActionController::TestCase
  setup do
    @post157 = post157s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post157s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post157" do
    assert_difference('Post157.count') do
      post :create, :post157 => @post157.attributes
    end

    assert_redirected_to post157_path(assigns(:post157))
  end

  test "should show post157" do
    get :show, :id => @post157.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post157.to_param
    assert_response :success
  end

  test "should update post157" do
    put :update, :id => @post157.to_param, :post157 => @post157.attributes
    assert_redirected_to post157_path(assigns(:post157))
  end

  test "should destroy post157" do
    assert_difference('Post157.count', -1) do
      delete :destroy, :id => @post157.to_param
    end

    assert_redirected_to post157s_path
  end
end
