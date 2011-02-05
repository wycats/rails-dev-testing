require 'test_helper'

class Post195sControllerTest < ActionController::TestCase
  setup do
    @post195 = post195s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post195s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post195" do
    assert_difference('Post195.count') do
      post :create, :post195 => @post195.attributes
    end

    assert_redirected_to post195_path(assigns(:post195))
  end

  test "should show post195" do
    get :show, :id => @post195.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post195.to_param
    assert_response :success
  end

  test "should update post195" do
    put :update, :id => @post195.to_param, :post195 => @post195.attributes
    assert_redirected_to post195_path(assigns(:post195))
  end

  test "should destroy post195" do
    assert_difference('Post195.count', -1) do
      delete :destroy, :id => @post195.to_param
    end

    assert_redirected_to post195s_path
  end
end
