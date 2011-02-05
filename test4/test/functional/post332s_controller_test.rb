require 'test_helper'

class Post332sControllerTest < ActionController::TestCase
  setup do
    @post332 = post332s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post332s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post332" do
    assert_difference('Post332.count') do
      post :create, :post332 => @post332.attributes
    end

    assert_redirected_to post332_path(assigns(:post332))
  end

  test "should show post332" do
    get :show, :id => @post332.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post332.to_param
    assert_response :success
  end

  test "should update post332" do
    put :update, :id => @post332.to_param, :post332 => @post332.attributes
    assert_redirected_to post332_path(assigns(:post332))
  end

  test "should destroy post332" do
    assert_difference('Post332.count', -1) do
      delete :destroy, :id => @post332.to_param
    end

    assert_redirected_to post332s_path
  end
end
