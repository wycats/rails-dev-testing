require 'test_helper'

class Post34sControllerTest < ActionController::TestCase
  setup do
    @post34 = post34s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post34s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post34" do
    assert_difference('Post34.count') do
      post :create, :post34 => @post34.attributes
    end

    assert_redirected_to post34_path(assigns(:post34))
  end

  test "should show post34" do
    get :show, :id => @post34.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post34.to_param
    assert_response :success
  end

  test "should update post34" do
    put :update, :id => @post34.to_param, :post34 => @post34.attributes
    assert_redirected_to post34_path(assigns(:post34))
  end

  test "should destroy post34" do
    assert_difference('Post34.count', -1) do
      delete :destroy, :id => @post34.to_param
    end

    assert_redirected_to post34s_path
  end
end
