require 'test_helper'

class Post271sControllerTest < ActionController::TestCase
  setup do
    @post271 = post271s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post271s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post271" do
    assert_difference('Post271.count') do
      post :create, :post271 => @post271.attributes
    end

    assert_redirected_to post271_path(assigns(:post271))
  end

  test "should show post271" do
    get :show, :id => @post271.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post271.to_param
    assert_response :success
  end

  test "should update post271" do
    put :update, :id => @post271.to_param, :post271 => @post271.attributes
    assert_redirected_to post271_path(assigns(:post271))
  end

  test "should destroy post271" do
    assert_difference('Post271.count', -1) do
      delete :destroy, :id => @post271.to_param
    end

    assert_redirected_to post271s_path
  end
end
