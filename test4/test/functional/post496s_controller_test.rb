require 'test_helper'

class Post496sControllerTest < ActionController::TestCase
  setup do
    @post496 = post496s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post496s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post496" do
    assert_difference('Post496.count') do
      post :create, :post496 => @post496.attributes
    end

    assert_redirected_to post496_path(assigns(:post496))
  end

  test "should show post496" do
    get :show, :id => @post496.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post496.to_param
    assert_response :success
  end

  test "should update post496" do
    put :update, :id => @post496.to_param, :post496 => @post496.attributes
    assert_redirected_to post496_path(assigns(:post496))
  end

  test "should destroy post496" do
    assert_difference('Post496.count', -1) do
      delete :destroy, :id => @post496.to_param
    end

    assert_redirected_to post496s_path
  end
end
