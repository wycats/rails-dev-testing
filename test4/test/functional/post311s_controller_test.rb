require 'test_helper'

class Post311sControllerTest < ActionController::TestCase
  setup do
    @post311 = post311s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post311s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post311" do
    assert_difference('Post311.count') do
      post :create, :post311 => @post311.attributes
    end

    assert_redirected_to post311_path(assigns(:post311))
  end

  test "should show post311" do
    get :show, :id => @post311.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post311.to_param
    assert_response :success
  end

  test "should update post311" do
    put :update, :id => @post311.to_param, :post311 => @post311.attributes
    assert_redirected_to post311_path(assigns(:post311))
  end

  test "should destroy post311" do
    assert_difference('Post311.count', -1) do
      delete :destroy, :id => @post311.to_param
    end

    assert_redirected_to post311s_path
  end
end
