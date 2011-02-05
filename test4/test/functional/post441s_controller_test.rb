require 'test_helper'

class Post441sControllerTest < ActionController::TestCase
  setup do
    @post441 = post441s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post441s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post441" do
    assert_difference('Post441.count') do
      post :create, :post441 => @post441.attributes
    end

    assert_redirected_to post441_path(assigns(:post441))
  end

  test "should show post441" do
    get :show, :id => @post441.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post441.to_param
    assert_response :success
  end

  test "should update post441" do
    put :update, :id => @post441.to_param, :post441 => @post441.attributes
    assert_redirected_to post441_path(assigns(:post441))
  end

  test "should destroy post441" do
    assert_difference('Post441.count', -1) do
      delete :destroy, :id => @post441.to_param
    end

    assert_redirected_to post441s_path
  end
end
