require 'test_helper'

class Post401sControllerTest < ActionController::TestCase
  setup do
    @post401 = post401s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post401s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post401" do
    assert_difference('Post401.count') do
      post :create, :post401 => @post401.attributes
    end

    assert_redirected_to post401_path(assigns(:post401))
  end

  test "should show post401" do
    get :show, :id => @post401.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post401.to_param
    assert_response :success
  end

  test "should update post401" do
    put :update, :id => @post401.to_param, :post401 => @post401.attributes
    assert_redirected_to post401_path(assigns(:post401))
  end

  test "should destroy post401" do
    assert_difference('Post401.count', -1) do
      delete :destroy, :id => @post401.to_param
    end

    assert_redirected_to post401s_path
  end
end
