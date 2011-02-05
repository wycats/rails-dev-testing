require 'test_helper'

class Post285sControllerTest < ActionController::TestCase
  setup do
    @post285 = post285s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post285s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post285" do
    assert_difference('Post285.count') do
      post :create, :post285 => @post285.attributes
    end

    assert_redirected_to post285_path(assigns(:post285))
  end

  test "should show post285" do
    get :show, :id => @post285.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post285.to_param
    assert_response :success
  end

  test "should update post285" do
    put :update, :id => @post285.to_param, :post285 => @post285.attributes
    assert_redirected_to post285_path(assigns(:post285))
  end

  test "should destroy post285" do
    assert_difference('Post285.count', -1) do
      delete :destroy, :id => @post285.to_param
    end

    assert_redirected_to post285s_path
  end
end
