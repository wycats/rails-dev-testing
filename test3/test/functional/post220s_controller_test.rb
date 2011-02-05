require 'test_helper'

class Post220sControllerTest < ActionController::TestCase
  setup do
    @post220 = post220s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post220s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post220" do
    assert_difference('Post220.count') do
      post :create, :post220 => @post220.attributes
    end

    assert_redirected_to post220_path(assigns(:post220))
  end

  test "should show post220" do
    get :show, :id => @post220.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post220.to_param
    assert_response :success
  end

  test "should update post220" do
    put :update, :id => @post220.to_param, :post220 => @post220.attributes
    assert_redirected_to post220_path(assigns(:post220))
  end

  test "should destroy post220" do
    assert_difference('Post220.count', -1) do
      delete :destroy, :id => @post220.to_param
    end

    assert_redirected_to post220s_path
  end
end
