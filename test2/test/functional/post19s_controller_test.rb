require 'test_helper'

class Post19sControllerTest < ActionController::TestCase
  setup do
    @post19 = post19s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post19s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post19" do
    assert_difference('Post19.count') do
      post :create, :post19 => @post19.attributes
    end

    assert_redirected_to post19_path(assigns(:post19))
  end

  test "should show post19" do
    get :show, :id => @post19.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post19.to_param
    assert_response :success
  end

  test "should update post19" do
    put :update, :id => @post19.to_param, :post19 => @post19.attributes
    assert_redirected_to post19_path(assigns(:post19))
  end

  test "should destroy post19" do
    assert_difference('Post19.count', -1) do
      delete :destroy, :id => @post19.to_param
    end

    assert_redirected_to post19s_path
  end
end
