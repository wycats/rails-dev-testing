require 'test_helper'

class Post11sControllerTest < ActionController::TestCase
  setup do
    @post11 = post11s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post11s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post11" do
    assert_difference('Post11.count') do
      post :create, :post11 => @post11.attributes
    end

    assert_redirected_to post11_path(assigns(:post11))
  end

  test "should show post11" do
    get :show, :id => @post11.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post11.to_param
    assert_response :success
  end

  test "should update post11" do
    put :update, :id => @post11.to_param, :post11 => @post11.attributes
    assert_redirected_to post11_path(assigns(:post11))
  end

  test "should destroy post11" do
    assert_difference('Post11.count', -1) do
      delete :destroy, :id => @post11.to_param
    end

    assert_redirected_to post11s_path
  end
end
