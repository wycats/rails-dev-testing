require 'test_helper'

class Post246sControllerTest < ActionController::TestCase
  setup do
    @post246 = post246s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post246s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post246" do
    assert_difference('Post246.count') do
      post :create, :post246 => @post246.attributes
    end

    assert_redirected_to post246_path(assigns(:post246))
  end

  test "should show post246" do
    get :show, :id => @post246.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post246.to_param
    assert_response :success
  end

  test "should update post246" do
    put :update, :id => @post246.to_param, :post246 => @post246.attributes
    assert_redirected_to post246_path(assigns(:post246))
  end

  test "should destroy post246" do
    assert_difference('Post246.count', -1) do
      delete :destroy, :id => @post246.to_param
    end

    assert_redirected_to post246s_path
  end
end
