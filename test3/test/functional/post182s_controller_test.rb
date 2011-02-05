require 'test_helper'

class Post182sControllerTest < ActionController::TestCase
  setup do
    @post182 = post182s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post182s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post182" do
    assert_difference('Post182.count') do
      post :create, :post182 => @post182.attributes
    end

    assert_redirected_to post182_path(assigns(:post182))
  end

  test "should show post182" do
    get :show, :id => @post182.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post182.to_param
    assert_response :success
  end

  test "should update post182" do
    put :update, :id => @post182.to_param, :post182 => @post182.attributes
    assert_redirected_to post182_path(assigns(:post182))
  end

  test "should destroy post182" do
    assert_difference('Post182.count', -1) do
      delete :destroy, :id => @post182.to_param
    end

    assert_redirected_to post182s_path
  end
end
