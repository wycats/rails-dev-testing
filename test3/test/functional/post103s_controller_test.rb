require 'test_helper'

class Post103sControllerTest < ActionController::TestCase
  setup do
    @post103 = post103s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post103s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post103" do
    assert_difference('Post103.count') do
      post :create, :post103 => @post103.attributes
    end

    assert_redirected_to post103_path(assigns(:post103))
  end

  test "should show post103" do
    get :show, :id => @post103.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post103.to_param
    assert_response :success
  end

  test "should update post103" do
    put :update, :id => @post103.to_param, :post103 => @post103.attributes
    assert_redirected_to post103_path(assigns(:post103))
  end

  test "should destroy post103" do
    assert_difference('Post103.count', -1) do
      delete :destroy, :id => @post103.to_param
    end

    assert_redirected_to post103s_path
  end
end
