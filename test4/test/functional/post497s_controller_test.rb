require 'test_helper'

class Post497sControllerTest < ActionController::TestCase
  setup do
    @post497 = post497s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post497s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post497" do
    assert_difference('Post497.count') do
      post :create, :post497 => @post497.attributes
    end

    assert_redirected_to post497_path(assigns(:post497))
  end

  test "should show post497" do
    get :show, :id => @post497.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post497.to_param
    assert_response :success
  end

  test "should update post497" do
    put :update, :id => @post497.to_param, :post497 => @post497.attributes
    assert_redirected_to post497_path(assigns(:post497))
  end

  test "should destroy post497" do
    assert_difference('Post497.count', -1) do
      delete :destroy, :id => @post497.to_param
    end

    assert_redirected_to post497s_path
  end
end
