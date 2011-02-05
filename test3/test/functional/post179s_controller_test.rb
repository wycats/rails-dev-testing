require 'test_helper'

class Post179sControllerTest < ActionController::TestCase
  setup do
    @post179 = post179s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post179s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post179" do
    assert_difference('Post179.count') do
      post :create, :post179 => @post179.attributes
    end

    assert_redirected_to post179_path(assigns(:post179))
  end

  test "should show post179" do
    get :show, :id => @post179.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post179.to_param
    assert_response :success
  end

  test "should update post179" do
    put :update, :id => @post179.to_param, :post179 => @post179.attributes
    assert_redirected_to post179_path(assigns(:post179))
  end

  test "should destroy post179" do
    assert_difference('Post179.count', -1) do
      delete :destroy, :id => @post179.to_param
    end

    assert_redirected_to post179s_path
  end
end
