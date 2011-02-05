require 'test_helper'

class Post417sControllerTest < ActionController::TestCase
  setup do
    @post417 = post417s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post417s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post417" do
    assert_difference('Post417.count') do
      post :create, :post417 => @post417.attributes
    end

    assert_redirected_to post417_path(assigns(:post417))
  end

  test "should show post417" do
    get :show, :id => @post417.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post417.to_param
    assert_response :success
  end

  test "should update post417" do
    put :update, :id => @post417.to_param, :post417 => @post417.attributes
    assert_redirected_to post417_path(assigns(:post417))
  end

  test "should destroy post417" do
    assert_difference('Post417.count', -1) do
      delete :destroy, :id => @post417.to_param
    end

    assert_redirected_to post417s_path
  end
end
