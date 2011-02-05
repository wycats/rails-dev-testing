require 'test_helper'

class Post238sControllerTest < ActionController::TestCase
  setup do
    @post238 = post238s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post238s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post238" do
    assert_difference('Post238.count') do
      post :create, :post238 => @post238.attributes
    end

    assert_redirected_to post238_path(assigns(:post238))
  end

  test "should show post238" do
    get :show, :id => @post238.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post238.to_param
    assert_response :success
  end

  test "should update post238" do
    put :update, :id => @post238.to_param, :post238 => @post238.attributes
    assert_redirected_to post238_path(assigns(:post238))
  end

  test "should destroy post238" do
    assert_difference('Post238.count', -1) do
      delete :destroy, :id => @post238.to_param
    end

    assert_redirected_to post238s_path
  end
end
