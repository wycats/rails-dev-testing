require 'test_helper'

class Post447sControllerTest < ActionController::TestCase
  setup do
    @post447 = post447s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post447s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post447" do
    assert_difference('Post447.count') do
      post :create, :post447 => @post447.attributes
    end

    assert_redirected_to post447_path(assigns(:post447))
  end

  test "should show post447" do
    get :show, :id => @post447.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post447.to_param
    assert_response :success
  end

  test "should update post447" do
    put :update, :id => @post447.to_param, :post447 => @post447.attributes
    assert_redirected_to post447_path(assigns(:post447))
  end

  test "should destroy post447" do
    assert_difference('Post447.count', -1) do
      delete :destroy, :id => @post447.to_param
    end

    assert_redirected_to post447s_path
  end
end
