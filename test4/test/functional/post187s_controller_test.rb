require 'test_helper'

class Post187sControllerTest < ActionController::TestCase
  setup do
    @post187 = post187s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post187s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post187" do
    assert_difference('Post187.count') do
      post :create, :post187 => @post187.attributes
    end

    assert_redirected_to post187_path(assigns(:post187))
  end

  test "should show post187" do
    get :show, :id => @post187.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post187.to_param
    assert_response :success
  end

  test "should update post187" do
    put :update, :id => @post187.to_param, :post187 => @post187.attributes
    assert_redirected_to post187_path(assigns(:post187))
  end

  test "should destroy post187" do
    assert_difference('Post187.count', -1) do
      delete :destroy, :id => @post187.to_param
    end

    assert_redirected_to post187s_path
  end
end
