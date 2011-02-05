require 'test_helper'

class Post43sControllerTest < ActionController::TestCase
  setup do
    @post43 = post43s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post43s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post43" do
    assert_difference('Post43.count') do
      post :create, :post43 => @post43.attributes
    end

    assert_redirected_to post43_path(assigns(:post43))
  end

  test "should show post43" do
    get :show, :id => @post43.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post43.to_param
    assert_response :success
  end

  test "should update post43" do
    put :update, :id => @post43.to_param, :post43 => @post43.attributes
    assert_redirected_to post43_path(assigns(:post43))
  end

  test "should destroy post43" do
    assert_difference('Post43.count', -1) do
      delete :destroy, :id => @post43.to_param
    end

    assert_redirected_to post43s_path
  end
end
