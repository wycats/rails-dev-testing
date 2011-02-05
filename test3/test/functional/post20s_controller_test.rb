require 'test_helper'

class Post20sControllerTest < ActionController::TestCase
  setup do
    @post20 = post20s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post20s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post20" do
    assert_difference('Post20.count') do
      post :create, :post20 => @post20.attributes
    end

    assert_redirected_to post20_path(assigns(:post20))
  end

  test "should show post20" do
    get :show, :id => @post20.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post20.to_param
    assert_response :success
  end

  test "should update post20" do
    put :update, :id => @post20.to_param, :post20 => @post20.attributes
    assert_redirected_to post20_path(assigns(:post20))
  end

  test "should destroy post20" do
    assert_difference('Post20.count', -1) do
      delete :destroy, :id => @post20.to_param
    end

    assert_redirected_to post20s_path
  end
end
