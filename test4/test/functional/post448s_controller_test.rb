require 'test_helper'

class Post448sControllerTest < ActionController::TestCase
  setup do
    @post448 = post448s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post448s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post448" do
    assert_difference('Post448.count') do
      post :create, :post448 => @post448.attributes
    end

    assert_redirected_to post448_path(assigns(:post448))
  end

  test "should show post448" do
    get :show, :id => @post448.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post448.to_param
    assert_response :success
  end

  test "should update post448" do
    put :update, :id => @post448.to_param, :post448 => @post448.attributes
    assert_redirected_to post448_path(assigns(:post448))
  end

  test "should destroy post448" do
    assert_difference('Post448.count', -1) do
      delete :destroy, :id => @post448.to_param
    end

    assert_redirected_to post448s_path
  end
end
