require 'test_helper'

class Post392sControllerTest < ActionController::TestCase
  setup do
    @post392 = post392s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post392s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post392" do
    assert_difference('Post392.count') do
      post :create, :post392 => @post392.attributes
    end

    assert_redirected_to post392_path(assigns(:post392))
  end

  test "should show post392" do
    get :show, :id => @post392.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post392.to_param
    assert_response :success
  end

  test "should update post392" do
    put :update, :id => @post392.to_param, :post392 => @post392.attributes
    assert_redirected_to post392_path(assigns(:post392))
  end

  test "should destroy post392" do
    assert_difference('Post392.count', -1) do
      delete :destroy, :id => @post392.to_param
    end

    assert_redirected_to post392s_path
  end
end
