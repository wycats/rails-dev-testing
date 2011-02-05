require 'test_helper'

class Post228sControllerTest < ActionController::TestCase
  setup do
    @post228 = post228s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post228s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post228" do
    assert_difference('Post228.count') do
      post :create, :post228 => @post228.attributes
    end

    assert_redirected_to post228_path(assigns(:post228))
  end

  test "should show post228" do
    get :show, :id => @post228.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post228.to_param
    assert_response :success
  end

  test "should update post228" do
    put :update, :id => @post228.to_param, :post228 => @post228.attributes
    assert_redirected_to post228_path(assigns(:post228))
  end

  test "should destroy post228" do
    assert_difference('Post228.count', -1) do
      delete :destroy, :id => @post228.to_param
    end

    assert_redirected_to post228s_path
  end
end
