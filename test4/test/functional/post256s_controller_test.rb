require 'test_helper'

class Post256sControllerTest < ActionController::TestCase
  setup do
    @post256 = post256s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post256s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post256" do
    assert_difference('Post256.count') do
      post :create, :post256 => @post256.attributes
    end

    assert_redirected_to post256_path(assigns(:post256))
  end

  test "should show post256" do
    get :show, :id => @post256.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post256.to_param
    assert_response :success
  end

  test "should update post256" do
    put :update, :id => @post256.to_param, :post256 => @post256.attributes
    assert_redirected_to post256_path(assigns(:post256))
  end

  test "should destroy post256" do
    assert_difference('Post256.count', -1) do
      delete :destroy, :id => @post256.to_param
    end

    assert_redirected_to post256s_path
  end
end
