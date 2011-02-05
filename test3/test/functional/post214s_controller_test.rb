require 'test_helper'

class Post214sControllerTest < ActionController::TestCase
  setup do
    @post214 = post214s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post214s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post214" do
    assert_difference('Post214.count') do
      post :create, :post214 => @post214.attributes
    end

    assert_redirected_to post214_path(assigns(:post214))
  end

  test "should show post214" do
    get :show, :id => @post214.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post214.to_param
    assert_response :success
  end

  test "should update post214" do
    put :update, :id => @post214.to_param, :post214 => @post214.attributes
    assert_redirected_to post214_path(assigns(:post214))
  end

  test "should destroy post214" do
    assert_difference('Post214.count', -1) do
      delete :destroy, :id => @post214.to_param
    end

    assert_redirected_to post214s_path
  end
end
