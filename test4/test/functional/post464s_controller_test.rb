require 'test_helper'

class Post464sControllerTest < ActionController::TestCase
  setup do
    @post464 = post464s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post464s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post464" do
    assert_difference('Post464.count') do
      post :create, :post464 => @post464.attributes
    end

    assert_redirected_to post464_path(assigns(:post464))
  end

  test "should show post464" do
    get :show, :id => @post464.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post464.to_param
    assert_response :success
  end

  test "should update post464" do
    put :update, :id => @post464.to_param, :post464 => @post464.attributes
    assert_redirected_to post464_path(assigns(:post464))
  end

  test "should destroy post464" do
    assert_difference('Post464.count', -1) do
      delete :destroy, :id => @post464.to_param
    end

    assert_redirected_to post464s_path
  end
end
