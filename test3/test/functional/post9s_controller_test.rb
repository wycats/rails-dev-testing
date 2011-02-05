require 'test_helper'

class Post9sControllerTest < ActionController::TestCase
  setup do
    @post9 = post9s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post9s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post9" do
    assert_difference('Post9.count') do
      post :create, :post9 => @post9.attributes
    end

    assert_redirected_to post9_path(assigns(:post9))
  end

  test "should show post9" do
    get :show, :id => @post9.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post9.to_param
    assert_response :success
  end

  test "should update post9" do
    put :update, :id => @post9.to_param, :post9 => @post9.attributes
    assert_redirected_to post9_path(assigns(:post9))
  end

  test "should destroy post9" do
    assert_difference('Post9.count', -1) do
      delete :destroy, :id => @post9.to_param
    end

    assert_redirected_to post9s_path
  end
end
