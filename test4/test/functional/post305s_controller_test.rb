require 'test_helper'

class Post305sControllerTest < ActionController::TestCase
  setup do
    @post305 = post305s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post305s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post305" do
    assert_difference('Post305.count') do
      post :create, :post305 => @post305.attributes
    end

    assert_redirected_to post305_path(assigns(:post305))
  end

  test "should show post305" do
    get :show, :id => @post305.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post305.to_param
    assert_response :success
  end

  test "should update post305" do
    put :update, :id => @post305.to_param, :post305 => @post305.attributes
    assert_redirected_to post305_path(assigns(:post305))
  end

  test "should destroy post305" do
    assert_difference('Post305.count', -1) do
      delete :destroy, :id => @post305.to_param
    end

    assert_redirected_to post305s_path
  end
end
