require 'test_helper'

class Post444sControllerTest < ActionController::TestCase
  setup do
    @post444 = post444s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post444s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post444" do
    assert_difference('Post444.count') do
      post :create, :post444 => @post444.attributes
    end

    assert_redirected_to post444_path(assigns(:post444))
  end

  test "should show post444" do
    get :show, :id => @post444.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post444.to_param
    assert_response :success
  end

  test "should update post444" do
    put :update, :id => @post444.to_param, :post444 => @post444.attributes
    assert_redirected_to post444_path(assigns(:post444))
  end

  test "should destroy post444" do
    assert_difference('Post444.count', -1) do
      delete :destroy, :id => @post444.to_param
    end

    assert_redirected_to post444s_path
  end
end
