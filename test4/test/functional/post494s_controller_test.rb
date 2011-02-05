require 'test_helper'

class Post494sControllerTest < ActionController::TestCase
  setup do
    @post494 = post494s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post494s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post494" do
    assert_difference('Post494.count') do
      post :create, :post494 => @post494.attributes
    end

    assert_redirected_to post494_path(assigns(:post494))
  end

  test "should show post494" do
    get :show, :id => @post494.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post494.to_param
    assert_response :success
  end

  test "should update post494" do
    put :update, :id => @post494.to_param, :post494 => @post494.attributes
    assert_redirected_to post494_path(assigns(:post494))
  end

  test "should destroy post494" do
    assert_difference('Post494.count', -1) do
      delete :destroy, :id => @post494.to_param
    end

    assert_redirected_to post494s_path
  end
end
