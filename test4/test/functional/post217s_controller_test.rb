require 'test_helper'

class Post217sControllerTest < ActionController::TestCase
  setup do
    @post217 = post217s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post217s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post217" do
    assert_difference('Post217.count') do
      post :create, :post217 => @post217.attributes
    end

    assert_redirected_to post217_path(assigns(:post217))
  end

  test "should show post217" do
    get :show, :id => @post217.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post217.to_param
    assert_response :success
  end

  test "should update post217" do
    put :update, :id => @post217.to_param, :post217 => @post217.attributes
    assert_redirected_to post217_path(assigns(:post217))
  end

  test "should destroy post217" do
    assert_difference('Post217.count', -1) do
      delete :destroy, :id => @post217.to_param
    end

    assert_redirected_to post217s_path
  end
end
