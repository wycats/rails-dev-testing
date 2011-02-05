require 'test_helper'

class Post239sControllerTest < ActionController::TestCase
  setup do
    @post239 = post239s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post239s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post239" do
    assert_difference('Post239.count') do
      post :create, :post239 => @post239.attributes
    end

    assert_redirected_to post239_path(assigns(:post239))
  end

  test "should show post239" do
    get :show, :id => @post239.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post239.to_param
    assert_response :success
  end

  test "should update post239" do
    put :update, :id => @post239.to_param, :post239 => @post239.attributes
    assert_redirected_to post239_path(assigns(:post239))
  end

  test "should destroy post239" do
    assert_difference('Post239.count', -1) do
      delete :destroy, :id => @post239.to_param
    end

    assert_redirected_to post239s_path
  end
end
