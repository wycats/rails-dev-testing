require 'test_helper'

class Post137sControllerTest < ActionController::TestCase
  setup do
    @post137 = post137s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post137s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post137" do
    assert_difference('Post137.count') do
      post :create, :post137 => @post137.attributes
    end

    assert_redirected_to post137_path(assigns(:post137))
  end

  test "should show post137" do
    get :show, :id => @post137.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post137.to_param
    assert_response :success
  end

  test "should update post137" do
    put :update, :id => @post137.to_param, :post137 => @post137.attributes
    assert_redirected_to post137_path(assigns(:post137))
  end

  test "should destroy post137" do
    assert_difference('Post137.count', -1) do
      delete :destroy, :id => @post137.to_param
    end

    assert_redirected_to post137s_path
  end
end
