require 'test_helper'

class Post428sControllerTest < ActionController::TestCase
  setup do
    @post428 = post428s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post428s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post428" do
    assert_difference('Post428.count') do
      post :create, :post428 => @post428.attributes
    end

    assert_redirected_to post428_path(assigns(:post428))
  end

  test "should show post428" do
    get :show, :id => @post428.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post428.to_param
    assert_response :success
  end

  test "should update post428" do
    put :update, :id => @post428.to_param, :post428 => @post428.attributes
    assert_redirected_to post428_path(assigns(:post428))
  end

  test "should destroy post428" do
    assert_difference('Post428.count', -1) do
      delete :destroy, :id => @post428.to_param
    end

    assert_redirected_to post428s_path
  end
end
