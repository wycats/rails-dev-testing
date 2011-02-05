require 'test_helper'

class Post288sControllerTest < ActionController::TestCase
  setup do
    @post288 = post288s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post288s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post288" do
    assert_difference('Post288.count') do
      post :create, :post288 => @post288.attributes
    end

    assert_redirected_to post288_path(assigns(:post288))
  end

  test "should show post288" do
    get :show, :id => @post288.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post288.to_param
    assert_response :success
  end

  test "should update post288" do
    put :update, :id => @post288.to_param, :post288 => @post288.attributes
    assert_redirected_to post288_path(assigns(:post288))
  end

  test "should destroy post288" do
    assert_difference('Post288.count', -1) do
      delete :destroy, :id => @post288.to_param
    end

    assert_redirected_to post288s_path
  end
end
