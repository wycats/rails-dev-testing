require 'test_helper'

class Post377sControllerTest < ActionController::TestCase
  setup do
    @post377 = post377s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post377s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post377" do
    assert_difference('Post377.count') do
      post :create, :post377 => @post377.attributes
    end

    assert_redirected_to post377_path(assigns(:post377))
  end

  test "should show post377" do
    get :show, :id => @post377.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post377.to_param
    assert_response :success
  end

  test "should update post377" do
    put :update, :id => @post377.to_param, :post377 => @post377.attributes
    assert_redirected_to post377_path(assigns(:post377))
  end

  test "should destroy post377" do
    assert_difference('Post377.count', -1) do
      delete :destroy, :id => @post377.to_param
    end

    assert_redirected_to post377s_path
  end
end
