require 'test_helper'

class Post115sControllerTest < ActionController::TestCase
  setup do
    @post115 = post115s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post115s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post115" do
    assert_difference('Post115.count') do
      post :create, :post115 => @post115.attributes
    end

    assert_redirected_to post115_path(assigns(:post115))
  end

  test "should show post115" do
    get :show, :id => @post115.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post115.to_param
    assert_response :success
  end

  test "should update post115" do
    put :update, :id => @post115.to_param, :post115 => @post115.attributes
    assert_redirected_to post115_path(assigns(:post115))
  end

  test "should destroy post115" do
    assert_difference('Post115.count', -1) do
      delete :destroy, :id => @post115.to_param
    end

    assert_redirected_to post115s_path
  end
end
