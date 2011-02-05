require 'test_helper'

class Post212sControllerTest < ActionController::TestCase
  setup do
    @post212 = post212s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post212s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post212" do
    assert_difference('Post212.count') do
      post :create, :post212 => @post212.attributes
    end

    assert_redirected_to post212_path(assigns(:post212))
  end

  test "should show post212" do
    get :show, :id => @post212.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post212.to_param
    assert_response :success
  end

  test "should update post212" do
    put :update, :id => @post212.to_param, :post212 => @post212.attributes
    assert_redirected_to post212_path(assigns(:post212))
  end

  test "should destroy post212" do
    assert_difference('Post212.count', -1) do
      delete :destroy, :id => @post212.to_param
    end

    assert_redirected_to post212s_path
  end
end
