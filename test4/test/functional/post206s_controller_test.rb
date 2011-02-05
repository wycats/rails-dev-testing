require 'test_helper'

class Post206sControllerTest < ActionController::TestCase
  setup do
    @post206 = post206s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post206s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post206" do
    assert_difference('Post206.count') do
      post :create, :post206 => @post206.attributes
    end

    assert_redirected_to post206_path(assigns(:post206))
  end

  test "should show post206" do
    get :show, :id => @post206.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post206.to_param
    assert_response :success
  end

  test "should update post206" do
    put :update, :id => @post206.to_param, :post206 => @post206.attributes
    assert_redirected_to post206_path(assigns(:post206))
  end

  test "should destroy post206" do
    assert_difference('Post206.count', -1) do
      delete :destroy, :id => @post206.to_param
    end

    assert_redirected_to post206s_path
  end
end
