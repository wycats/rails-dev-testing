require 'test_helper'

class Post456sControllerTest < ActionController::TestCase
  setup do
    @post456 = post456s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post456s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post456" do
    assert_difference('Post456.count') do
      post :create, :post456 => @post456.attributes
    end

    assert_redirected_to post456_path(assigns(:post456))
  end

  test "should show post456" do
    get :show, :id => @post456.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post456.to_param
    assert_response :success
  end

  test "should update post456" do
    put :update, :id => @post456.to_param, :post456 => @post456.attributes
    assert_redirected_to post456_path(assigns(:post456))
  end

  test "should destroy post456" do
    assert_difference('Post456.count', -1) do
      delete :destroy, :id => @post456.to_param
    end

    assert_redirected_to post456s_path
  end
end
