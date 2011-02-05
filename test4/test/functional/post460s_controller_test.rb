require 'test_helper'

class Post460sControllerTest < ActionController::TestCase
  setup do
    @post460 = post460s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post460s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post460" do
    assert_difference('Post460.count') do
      post :create, :post460 => @post460.attributes
    end

    assert_redirected_to post460_path(assigns(:post460))
  end

  test "should show post460" do
    get :show, :id => @post460.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post460.to_param
    assert_response :success
  end

  test "should update post460" do
    put :update, :id => @post460.to_param, :post460 => @post460.attributes
    assert_redirected_to post460_path(assigns(:post460))
  end

  test "should destroy post460" do
    assert_difference('Post460.count', -1) do
      delete :destroy, :id => @post460.to_param
    end

    assert_redirected_to post460s_path
  end
end
