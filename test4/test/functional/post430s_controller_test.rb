require 'test_helper'

class Post430sControllerTest < ActionController::TestCase
  setup do
    @post430 = post430s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post430s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post430" do
    assert_difference('Post430.count') do
      post :create, :post430 => @post430.attributes
    end

    assert_redirected_to post430_path(assigns(:post430))
  end

  test "should show post430" do
    get :show, :id => @post430.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post430.to_param
    assert_response :success
  end

  test "should update post430" do
    put :update, :id => @post430.to_param, :post430 => @post430.attributes
    assert_redirected_to post430_path(assigns(:post430))
  end

  test "should destroy post430" do
    assert_difference('Post430.count', -1) do
      delete :destroy, :id => @post430.to_param
    end

    assert_redirected_to post430s_path
  end
end
