require 'test_helper'

class Post334sControllerTest < ActionController::TestCase
  setup do
    @post334 = post334s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post334s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post334" do
    assert_difference('Post334.count') do
      post :create, :post334 => @post334.attributes
    end

    assert_redirected_to post334_path(assigns(:post334))
  end

  test "should show post334" do
    get :show, :id => @post334.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post334.to_param
    assert_response :success
  end

  test "should update post334" do
    put :update, :id => @post334.to_param, :post334 => @post334.attributes
    assert_redirected_to post334_path(assigns(:post334))
  end

  test "should destroy post334" do
    assert_difference('Post334.count', -1) do
      delete :destroy, :id => @post334.to_param
    end

    assert_redirected_to post334s_path
  end
end
