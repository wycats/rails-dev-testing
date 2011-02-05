require 'test_helper'

class Post310sControllerTest < ActionController::TestCase
  setup do
    @post310 = post310s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post310s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post310" do
    assert_difference('Post310.count') do
      post :create, :post310 => @post310.attributes
    end

    assert_redirected_to post310_path(assigns(:post310))
  end

  test "should show post310" do
    get :show, :id => @post310.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post310.to_param
    assert_response :success
  end

  test "should update post310" do
    put :update, :id => @post310.to_param, :post310 => @post310.attributes
    assert_redirected_to post310_path(assigns(:post310))
  end

  test "should destroy post310" do
    assert_difference('Post310.count', -1) do
      delete :destroy, :id => @post310.to_param
    end

    assert_redirected_to post310s_path
  end
end
