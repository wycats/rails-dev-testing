require 'test_helper'

class Post44sControllerTest < ActionController::TestCase
  setup do
    @post44 = post44s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post44s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post44" do
    assert_difference('Post44.count') do
      post :create, :post44 => @post44.attributes
    end

    assert_redirected_to post44_path(assigns(:post44))
  end

  test "should show post44" do
    get :show, :id => @post44.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post44.to_param
    assert_response :success
  end

  test "should update post44" do
    put :update, :id => @post44.to_param, :post44 => @post44.attributes
    assert_redirected_to post44_path(assigns(:post44))
  end

  test "should destroy post44" do
    assert_difference('Post44.count', -1) do
      delete :destroy, :id => @post44.to_param
    end

    assert_redirected_to post44s_path
  end
end
