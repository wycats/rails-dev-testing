require 'test_helper'

class Post410sControllerTest < ActionController::TestCase
  setup do
    @post410 = post410s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post410s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post410" do
    assert_difference('Post410.count') do
      post :create, :post410 => @post410.attributes
    end

    assert_redirected_to post410_path(assigns(:post410))
  end

  test "should show post410" do
    get :show, :id => @post410.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post410.to_param
    assert_response :success
  end

  test "should update post410" do
    put :update, :id => @post410.to_param, :post410 => @post410.attributes
    assert_redirected_to post410_path(assigns(:post410))
  end

  test "should destroy post410" do
    assert_difference('Post410.count', -1) do
      delete :destroy, :id => @post410.to_param
    end

    assert_redirected_to post410s_path
  end
end
