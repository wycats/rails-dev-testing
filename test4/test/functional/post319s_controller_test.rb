require 'test_helper'

class Post319sControllerTest < ActionController::TestCase
  setup do
    @post319 = post319s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post319s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post319" do
    assert_difference('Post319.count') do
      post :create, :post319 => @post319.attributes
    end

    assert_redirected_to post319_path(assigns(:post319))
  end

  test "should show post319" do
    get :show, :id => @post319.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post319.to_param
    assert_response :success
  end

  test "should update post319" do
    put :update, :id => @post319.to_param, :post319 => @post319.attributes
    assert_redirected_to post319_path(assigns(:post319))
  end

  test "should destroy post319" do
    assert_difference('Post319.count', -1) do
      delete :destroy, :id => @post319.to_param
    end

    assert_redirected_to post319s_path
  end
end
