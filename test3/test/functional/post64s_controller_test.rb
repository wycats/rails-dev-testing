require 'test_helper'

class Post64sControllerTest < ActionController::TestCase
  setup do
    @post64 = post64s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post64s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post64" do
    assert_difference('Post64.count') do
      post :create, :post64 => @post64.attributes
    end

    assert_redirected_to post64_path(assigns(:post64))
  end

  test "should show post64" do
    get :show, :id => @post64.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post64.to_param
    assert_response :success
  end

  test "should update post64" do
    put :update, :id => @post64.to_param, :post64 => @post64.attributes
    assert_redirected_to post64_path(assigns(:post64))
  end

  test "should destroy post64" do
    assert_difference('Post64.count', -1) do
      delete :destroy, :id => @post64.to_param
    end

    assert_redirected_to post64s_path
  end
end
