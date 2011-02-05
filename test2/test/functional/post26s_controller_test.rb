require 'test_helper'

class Post26sControllerTest < ActionController::TestCase
  setup do
    @post26 = post26s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post26s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post26" do
    assert_difference('Post26.count') do
      post :create, :post26 => @post26.attributes
    end

    assert_redirected_to post26_path(assigns(:post26))
  end

  test "should show post26" do
    get :show, :id => @post26.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post26.to_param
    assert_response :success
  end

  test "should update post26" do
    put :update, :id => @post26.to_param, :post26 => @post26.attributes
    assert_redirected_to post26_path(assigns(:post26))
  end

  test "should destroy post26" do
    assert_difference('Post26.count', -1) do
      delete :destroy, :id => @post26.to_param
    end

    assert_redirected_to post26s_path
  end
end
