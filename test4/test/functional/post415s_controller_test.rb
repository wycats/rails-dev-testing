require 'test_helper'

class Post415sControllerTest < ActionController::TestCase
  setup do
    @post415 = post415s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post415s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post415" do
    assert_difference('Post415.count') do
      post :create, :post415 => @post415.attributes
    end

    assert_redirected_to post415_path(assigns(:post415))
  end

  test "should show post415" do
    get :show, :id => @post415.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post415.to_param
    assert_response :success
  end

  test "should update post415" do
    put :update, :id => @post415.to_param, :post415 => @post415.attributes
    assert_redirected_to post415_path(assigns(:post415))
  end

  test "should destroy post415" do
    assert_difference('Post415.count', -1) do
      delete :destroy, :id => @post415.to_param
    end

    assert_redirected_to post415s_path
  end
end
