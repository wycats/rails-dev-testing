require 'test_helper'

class Post211sControllerTest < ActionController::TestCase
  setup do
    @post211 = post211s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post211s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post211" do
    assert_difference('Post211.count') do
      post :create, :post211 => @post211.attributes
    end

    assert_redirected_to post211_path(assigns(:post211))
  end

  test "should show post211" do
    get :show, :id => @post211.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post211.to_param
    assert_response :success
  end

  test "should update post211" do
    put :update, :id => @post211.to_param, :post211 => @post211.attributes
    assert_redirected_to post211_path(assigns(:post211))
  end

  test "should destroy post211" do
    assert_difference('Post211.count', -1) do
      delete :destroy, :id => @post211.to_param
    end

    assert_redirected_to post211s_path
  end
end
