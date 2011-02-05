require 'test_helper'

class Post433sControllerTest < ActionController::TestCase
  setup do
    @post433 = post433s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post433s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post433" do
    assert_difference('Post433.count') do
      post :create, :post433 => @post433.attributes
    end

    assert_redirected_to post433_path(assigns(:post433))
  end

  test "should show post433" do
    get :show, :id => @post433.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post433.to_param
    assert_response :success
  end

  test "should update post433" do
    put :update, :id => @post433.to_param, :post433 => @post433.attributes
    assert_redirected_to post433_path(assigns(:post433))
  end

  test "should destroy post433" do
    assert_difference('Post433.count', -1) do
      delete :destroy, :id => @post433.to_param
    end

    assert_redirected_to post433s_path
  end
end
