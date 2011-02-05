require 'test_helper'

class Post226sControllerTest < ActionController::TestCase
  setup do
    @post226 = post226s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post226s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post226" do
    assert_difference('Post226.count') do
      post :create, :post226 => @post226.attributes
    end

    assert_redirected_to post226_path(assigns(:post226))
  end

  test "should show post226" do
    get :show, :id => @post226.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post226.to_param
    assert_response :success
  end

  test "should update post226" do
    put :update, :id => @post226.to_param, :post226 => @post226.attributes
    assert_redirected_to post226_path(assigns(:post226))
  end

  test "should destroy post226" do
    assert_difference('Post226.count', -1) do
      delete :destroy, :id => @post226.to_param
    end

    assert_redirected_to post226s_path
  end
end
