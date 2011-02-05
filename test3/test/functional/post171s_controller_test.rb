require 'test_helper'

class Post171sControllerTest < ActionController::TestCase
  setup do
    @post171 = post171s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post171s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post171" do
    assert_difference('Post171.count') do
      post :create, :post171 => @post171.attributes
    end

    assert_redirected_to post171_path(assigns(:post171))
  end

  test "should show post171" do
    get :show, :id => @post171.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post171.to_param
    assert_response :success
  end

  test "should update post171" do
    put :update, :id => @post171.to_param, :post171 => @post171.attributes
    assert_redirected_to post171_path(assigns(:post171))
  end

  test "should destroy post171" do
    assert_difference('Post171.count', -1) do
      delete :destroy, :id => @post171.to_param
    end

    assert_redirected_to post171s_path
  end
end
