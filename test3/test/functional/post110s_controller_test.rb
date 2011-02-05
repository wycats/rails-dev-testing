require 'test_helper'

class Post110sControllerTest < ActionController::TestCase
  setup do
    @post110 = post110s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post110s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post110" do
    assert_difference('Post110.count') do
      post :create, :post110 => @post110.attributes
    end

    assert_redirected_to post110_path(assigns(:post110))
  end

  test "should show post110" do
    get :show, :id => @post110.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post110.to_param
    assert_response :success
  end

  test "should update post110" do
    put :update, :id => @post110.to_param, :post110 => @post110.attributes
    assert_redirected_to post110_path(assigns(:post110))
  end

  test "should destroy post110" do
    assert_difference('Post110.count', -1) do
      delete :destroy, :id => @post110.to_param
    end

    assert_redirected_to post110s_path
  end
end
