require 'test_helper'

class Post130sControllerTest < ActionController::TestCase
  setup do
    @post130 = post130s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post130s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post130" do
    assert_difference('Post130.count') do
      post :create, :post130 => @post130.attributes
    end

    assert_redirected_to post130_path(assigns(:post130))
  end

  test "should show post130" do
    get :show, :id => @post130.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post130.to_param
    assert_response :success
  end

  test "should update post130" do
    put :update, :id => @post130.to_param, :post130 => @post130.attributes
    assert_redirected_to post130_path(assigns(:post130))
  end

  test "should destroy post130" do
    assert_difference('Post130.count', -1) do
      delete :destroy, :id => @post130.to_param
    end

    assert_redirected_to post130s_path
  end
end
