require 'test_helper'

class Post452sControllerTest < ActionController::TestCase
  setup do
    @post452 = post452s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post452s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post452" do
    assert_difference('Post452.count') do
      post :create, :post452 => @post452.attributes
    end

    assert_redirected_to post452_path(assigns(:post452))
  end

  test "should show post452" do
    get :show, :id => @post452.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post452.to_param
    assert_response :success
  end

  test "should update post452" do
    put :update, :id => @post452.to_param, :post452 => @post452.attributes
    assert_redirected_to post452_path(assigns(:post452))
  end

  test "should destroy post452" do
    assert_difference('Post452.count', -1) do
      delete :destroy, :id => @post452.to_param
    end

    assert_redirected_to post452s_path
  end
end
