require 'test_helper'

class Post369sControllerTest < ActionController::TestCase
  setup do
    @post369 = post369s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post369s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post369" do
    assert_difference('Post369.count') do
      post :create, :post369 => @post369.attributes
    end

    assert_redirected_to post369_path(assigns(:post369))
  end

  test "should show post369" do
    get :show, :id => @post369.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post369.to_param
    assert_response :success
  end

  test "should update post369" do
    put :update, :id => @post369.to_param, :post369 => @post369.attributes
    assert_redirected_to post369_path(assigns(:post369))
  end

  test "should destroy post369" do
    assert_difference('Post369.count', -1) do
      delete :destroy, :id => @post369.to_param
    end

    assert_redirected_to post369s_path
  end
end
