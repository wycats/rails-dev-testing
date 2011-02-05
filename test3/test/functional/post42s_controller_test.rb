require 'test_helper'

class Post42sControllerTest < ActionController::TestCase
  setup do
    @post42 = post42s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post42s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post42" do
    assert_difference('Post42.count') do
      post :create, :post42 => @post42.attributes
    end

    assert_redirected_to post42_path(assigns(:post42))
  end

  test "should show post42" do
    get :show, :id => @post42.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post42.to_param
    assert_response :success
  end

  test "should update post42" do
    put :update, :id => @post42.to_param, :post42 => @post42.attributes
    assert_redirected_to post42_path(assigns(:post42))
  end

  test "should destroy post42" do
    assert_difference('Post42.count', -1) do
      delete :destroy, :id => @post42.to_param
    end

    assert_redirected_to post42s_path
  end
end
