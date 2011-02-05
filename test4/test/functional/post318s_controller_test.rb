require 'test_helper'

class Post318sControllerTest < ActionController::TestCase
  setup do
    @post318 = post318s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post318s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post318" do
    assert_difference('Post318.count') do
      post :create, :post318 => @post318.attributes
    end

    assert_redirected_to post318_path(assigns(:post318))
  end

  test "should show post318" do
    get :show, :id => @post318.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post318.to_param
    assert_response :success
  end

  test "should update post318" do
    put :update, :id => @post318.to_param, :post318 => @post318.attributes
    assert_redirected_to post318_path(assigns(:post318))
  end

  test "should destroy post318" do
    assert_difference('Post318.count', -1) do
      delete :destroy, :id => @post318.to_param
    end

    assert_redirected_to post318s_path
  end
end
