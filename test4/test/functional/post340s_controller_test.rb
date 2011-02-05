require 'test_helper'

class Post340sControllerTest < ActionController::TestCase
  setup do
    @post340 = post340s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post340s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post340" do
    assert_difference('Post340.count') do
      post :create, :post340 => @post340.attributes
    end

    assert_redirected_to post340_path(assigns(:post340))
  end

  test "should show post340" do
    get :show, :id => @post340.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post340.to_param
    assert_response :success
  end

  test "should update post340" do
    put :update, :id => @post340.to_param, :post340 => @post340.attributes
    assert_redirected_to post340_path(assigns(:post340))
  end

  test "should destroy post340" do
    assert_difference('Post340.count', -1) do
      delete :destroy, :id => @post340.to_param
    end

    assert_redirected_to post340s_path
  end
end
