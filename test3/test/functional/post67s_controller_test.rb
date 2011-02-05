require 'test_helper'

class Post67sControllerTest < ActionController::TestCase
  setup do
    @post67 = post67s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post67s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post67" do
    assert_difference('Post67.count') do
      post :create, :post67 => @post67.attributes
    end

    assert_redirected_to post67_path(assigns(:post67))
  end

  test "should show post67" do
    get :show, :id => @post67.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post67.to_param
    assert_response :success
  end

  test "should update post67" do
    put :update, :id => @post67.to_param, :post67 => @post67.attributes
    assert_redirected_to post67_path(assigns(:post67))
  end

  test "should destroy post67" do
    assert_difference('Post67.count', -1) do
      delete :destroy, :id => @post67.to_param
    end

    assert_redirected_to post67s_path
  end
end
