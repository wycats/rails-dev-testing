require 'test_helper'

class Post265sControllerTest < ActionController::TestCase
  setup do
    @post265 = post265s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post265s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post265" do
    assert_difference('Post265.count') do
      post :create, :post265 => @post265.attributes
    end

    assert_redirected_to post265_path(assigns(:post265))
  end

  test "should show post265" do
    get :show, :id => @post265.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post265.to_param
    assert_response :success
  end

  test "should update post265" do
    put :update, :id => @post265.to_param, :post265 => @post265.attributes
    assert_redirected_to post265_path(assigns(:post265))
  end

  test "should destroy post265" do
    assert_difference('Post265.count', -1) do
      delete :destroy, :id => @post265.to_param
    end

    assert_redirected_to post265s_path
  end
end
