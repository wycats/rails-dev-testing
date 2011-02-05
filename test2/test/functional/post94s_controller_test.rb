require 'test_helper'

class Post94sControllerTest < ActionController::TestCase
  setup do
    @post94 = post94s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post94s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post94" do
    assert_difference('Post94.count') do
      post :create, :post94 => @post94.attributes
    end

    assert_redirected_to post94_path(assigns(:post94))
  end

  test "should show post94" do
    get :show, :id => @post94.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post94.to_param
    assert_response :success
  end

  test "should update post94" do
    put :update, :id => @post94.to_param, :post94 => @post94.attributes
    assert_redirected_to post94_path(assigns(:post94))
  end

  test "should destroy post94" do
    assert_difference('Post94.count', -1) do
      delete :destroy, :id => @post94.to_param
    end

    assert_redirected_to post94s_path
  end
end
