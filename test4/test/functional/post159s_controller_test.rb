require 'test_helper'

class Post159sControllerTest < ActionController::TestCase
  setup do
    @post159 = post159s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post159s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post159" do
    assert_difference('Post159.count') do
      post :create, :post159 => @post159.attributes
    end

    assert_redirected_to post159_path(assigns(:post159))
  end

  test "should show post159" do
    get :show, :id => @post159.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post159.to_param
    assert_response :success
  end

  test "should update post159" do
    put :update, :id => @post159.to_param, :post159 => @post159.attributes
    assert_redirected_to post159_path(assigns(:post159))
  end

  test "should destroy post159" do
    assert_difference('Post159.count', -1) do
      delete :destroy, :id => @post159.to_param
    end

    assert_redirected_to post159s_path
  end
end
