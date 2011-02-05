require 'test_helper'

class Post202sControllerTest < ActionController::TestCase
  setup do
    @post202 = post202s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post202s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post202" do
    assert_difference('Post202.count') do
      post :create, :post202 => @post202.attributes
    end

    assert_redirected_to post202_path(assigns(:post202))
  end

  test "should show post202" do
    get :show, :id => @post202.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post202.to_param
    assert_response :success
  end

  test "should update post202" do
    put :update, :id => @post202.to_param, :post202 => @post202.attributes
    assert_redirected_to post202_path(assigns(:post202))
  end

  test "should destroy post202" do
    assert_difference('Post202.count', -1) do
      delete :destroy, :id => @post202.to_param
    end

    assert_redirected_to post202s_path
  end
end
