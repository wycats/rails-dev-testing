require 'test_helper'

class Post101sControllerTest < ActionController::TestCase
  setup do
    @post101 = post101s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post101s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post101" do
    assert_difference('Post101.count') do
      post :create, :post101 => @post101.attributes
    end

    assert_redirected_to post101_path(assigns(:post101))
  end

  test "should show post101" do
    get :show, :id => @post101.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post101.to_param
    assert_response :success
  end

  test "should update post101" do
    put :update, :id => @post101.to_param, :post101 => @post101.attributes
    assert_redirected_to post101_path(assigns(:post101))
  end

  test "should destroy post101" do
    assert_difference('Post101.count', -1) do
      delete :destroy, :id => @post101.to_param
    end

    assert_redirected_to post101s_path
  end
end
