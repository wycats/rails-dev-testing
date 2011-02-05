require 'test_helper'

class Post121sControllerTest < ActionController::TestCase
  setup do
    @post121 = post121s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post121s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post121" do
    assert_difference('Post121.count') do
      post :create, :post121 => @post121.attributes
    end

    assert_redirected_to post121_path(assigns(:post121))
  end

  test "should show post121" do
    get :show, :id => @post121.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post121.to_param
    assert_response :success
  end

  test "should update post121" do
    put :update, :id => @post121.to_param, :post121 => @post121.attributes
    assert_redirected_to post121_path(assigns(:post121))
  end

  test "should destroy post121" do
    assert_difference('Post121.count', -1) do
      delete :destroy, :id => @post121.to_param
    end

    assert_redirected_to post121s_path
  end
end
