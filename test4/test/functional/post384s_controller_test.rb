require 'test_helper'

class Post384sControllerTest < ActionController::TestCase
  setup do
    @post384 = post384s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post384s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post384" do
    assert_difference('Post384.count') do
      post :create, :post384 => @post384.attributes
    end

    assert_redirected_to post384_path(assigns(:post384))
  end

  test "should show post384" do
    get :show, :id => @post384.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post384.to_param
    assert_response :success
  end

  test "should update post384" do
    put :update, :id => @post384.to_param, :post384 => @post384.attributes
    assert_redirected_to post384_path(assigns(:post384))
  end

  test "should destroy post384" do
    assert_difference('Post384.count', -1) do
      delete :destroy, :id => @post384.to_param
    end

    assert_redirected_to post384s_path
  end
end
