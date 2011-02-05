require 'test_helper'

class Post48sControllerTest < ActionController::TestCase
  setup do
    @post48 = post48s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post48s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post48" do
    assert_difference('Post48.count') do
      post :create, :post48 => @post48.attributes
    end

    assert_redirected_to post48_path(assigns(:post48))
  end

  test "should show post48" do
    get :show, :id => @post48.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post48.to_param
    assert_response :success
  end

  test "should update post48" do
    put :update, :id => @post48.to_param, :post48 => @post48.attributes
    assert_redirected_to post48_path(assigns(:post48))
  end

  test "should destroy post48" do
    assert_difference('Post48.count', -1) do
      delete :destroy, :id => @post48.to_param
    end

    assert_redirected_to post48s_path
  end
end
