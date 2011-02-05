require 'test_helper'

class Post177sControllerTest < ActionController::TestCase
  setup do
    @post177 = post177s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post177s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post177" do
    assert_difference('Post177.count') do
      post :create, :post177 => @post177.attributes
    end

    assert_redirected_to post177_path(assigns(:post177))
  end

  test "should show post177" do
    get :show, :id => @post177.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post177.to_param
    assert_response :success
  end

  test "should update post177" do
    put :update, :id => @post177.to_param, :post177 => @post177.attributes
    assert_redirected_to post177_path(assigns(:post177))
  end

  test "should destroy post177" do
    assert_difference('Post177.count', -1) do
      delete :destroy, :id => @post177.to_param
    end

    assert_redirected_to post177s_path
  end
end
