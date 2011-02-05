require 'test_helper'

class Post420sControllerTest < ActionController::TestCase
  setup do
    @post420 = post420s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post420s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post420" do
    assert_difference('Post420.count') do
      post :create, :post420 => @post420.attributes
    end

    assert_redirected_to post420_path(assigns(:post420))
  end

  test "should show post420" do
    get :show, :id => @post420.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post420.to_param
    assert_response :success
  end

  test "should update post420" do
    put :update, :id => @post420.to_param, :post420 => @post420.attributes
    assert_redirected_to post420_path(assigns(:post420))
  end

  test "should destroy post420" do
    assert_difference('Post420.count', -1) do
      delete :destroy, :id => @post420.to_param
    end

    assert_redirected_to post420s_path
  end
end
