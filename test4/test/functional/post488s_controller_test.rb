require 'test_helper'

class Post488sControllerTest < ActionController::TestCase
  setup do
    @post488 = post488s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post488s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post488" do
    assert_difference('Post488.count') do
      post :create, :post488 => @post488.attributes
    end

    assert_redirected_to post488_path(assigns(:post488))
  end

  test "should show post488" do
    get :show, :id => @post488.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post488.to_param
    assert_response :success
  end

  test "should update post488" do
    put :update, :id => @post488.to_param, :post488 => @post488.attributes
    assert_redirected_to post488_path(assigns(:post488))
  end

  test "should destroy post488" do
    assert_difference('Post488.count', -1) do
      delete :destroy, :id => @post488.to_param
    end

    assert_redirected_to post488s_path
  end
end
