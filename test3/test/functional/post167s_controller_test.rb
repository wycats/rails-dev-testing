require 'test_helper'

class Post167sControllerTest < ActionController::TestCase
  setup do
    @post167 = post167s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post167s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post167" do
    assert_difference('Post167.count') do
      post :create, :post167 => @post167.attributes
    end

    assert_redirected_to post167_path(assigns(:post167))
  end

  test "should show post167" do
    get :show, :id => @post167.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post167.to_param
    assert_response :success
  end

  test "should update post167" do
    put :update, :id => @post167.to_param, :post167 => @post167.attributes
    assert_redirected_to post167_path(assigns(:post167))
  end

  test "should destroy post167" do
    assert_difference('Post167.count', -1) do
      delete :destroy, :id => @post167.to_param
    end

    assert_redirected_to post167s_path
  end
end
