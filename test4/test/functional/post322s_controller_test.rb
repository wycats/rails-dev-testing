require 'test_helper'

class Post322sControllerTest < ActionController::TestCase
  setup do
    @post322 = post322s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post322s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post322" do
    assert_difference('Post322.count') do
      post :create, :post322 => @post322.attributes
    end

    assert_redirected_to post322_path(assigns(:post322))
  end

  test "should show post322" do
    get :show, :id => @post322.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post322.to_param
    assert_response :success
  end

  test "should update post322" do
    put :update, :id => @post322.to_param, :post322 => @post322.attributes
    assert_redirected_to post322_path(assigns(:post322))
  end

  test "should destroy post322" do
    assert_difference('Post322.count', -1) do
      delete :destroy, :id => @post322.to_param
    end

    assert_redirected_to post322s_path
  end
end
