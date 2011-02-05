require 'test_helper'

class Post445sControllerTest < ActionController::TestCase
  setup do
    @post445 = post445s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post445s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post445" do
    assert_difference('Post445.count') do
      post :create, :post445 => @post445.attributes
    end

    assert_redirected_to post445_path(assigns(:post445))
  end

  test "should show post445" do
    get :show, :id => @post445.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post445.to_param
    assert_response :success
  end

  test "should update post445" do
    put :update, :id => @post445.to_param, :post445 => @post445.attributes
    assert_redirected_to post445_path(assigns(:post445))
  end

  test "should destroy post445" do
    assert_difference('Post445.count', -1) do
      delete :destroy, :id => @post445.to_param
    end

    assert_redirected_to post445s_path
  end
end
