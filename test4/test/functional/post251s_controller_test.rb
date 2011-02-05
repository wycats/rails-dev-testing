require 'test_helper'

class Post251sControllerTest < ActionController::TestCase
  setup do
    @post251 = post251s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post251s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post251" do
    assert_difference('Post251.count') do
      post :create, :post251 => @post251.attributes
    end

    assert_redirected_to post251_path(assigns(:post251))
  end

  test "should show post251" do
    get :show, :id => @post251.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post251.to_param
    assert_response :success
  end

  test "should update post251" do
    put :update, :id => @post251.to_param, :post251 => @post251.attributes
    assert_redirected_to post251_path(assigns(:post251))
  end

  test "should destroy post251" do
    assert_difference('Post251.count', -1) do
      delete :destroy, :id => @post251.to_param
    end

    assert_redirected_to post251s_path
  end
end
