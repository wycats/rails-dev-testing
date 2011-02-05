require 'test_helper'

class Post258sControllerTest < ActionController::TestCase
  setup do
    @post258 = post258s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post258s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post258" do
    assert_difference('Post258.count') do
      post :create, :post258 => @post258.attributes
    end

    assert_redirected_to post258_path(assigns(:post258))
  end

  test "should show post258" do
    get :show, :id => @post258.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post258.to_param
    assert_response :success
  end

  test "should update post258" do
    put :update, :id => @post258.to_param, :post258 => @post258.attributes
    assert_redirected_to post258_path(assigns(:post258))
  end

  test "should destroy post258" do
    assert_difference('Post258.count', -1) do
      delete :destroy, :id => @post258.to_param
    end

    assert_redirected_to post258s_path
  end
end
