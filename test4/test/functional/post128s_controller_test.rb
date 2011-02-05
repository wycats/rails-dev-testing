require 'test_helper'

class Post128sControllerTest < ActionController::TestCase
  setup do
    @post128 = post128s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post128s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post128" do
    assert_difference('Post128.count') do
      post :create, :post128 => @post128.attributes
    end

    assert_redirected_to post128_path(assigns(:post128))
  end

  test "should show post128" do
    get :show, :id => @post128.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post128.to_param
    assert_response :success
  end

  test "should update post128" do
    put :update, :id => @post128.to_param, :post128 => @post128.attributes
    assert_redirected_to post128_path(assigns(:post128))
  end

  test "should destroy post128" do
    assert_difference('Post128.count', -1) do
      delete :destroy, :id => @post128.to_param
    end

    assert_redirected_to post128s_path
  end
end
