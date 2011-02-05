require 'test_helper'

class Post28sControllerTest < ActionController::TestCase
  setup do
    @post28 = post28s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post28s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post28" do
    assert_difference('Post28.count') do
      post :create, :post28 => @post28.attributes
    end

    assert_redirected_to post28_path(assigns(:post28))
  end

  test "should show post28" do
    get :show, :id => @post28.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post28.to_param
    assert_response :success
  end

  test "should update post28" do
    put :update, :id => @post28.to_param, :post28 => @post28.attributes
    assert_redirected_to post28_path(assigns(:post28))
  end

  test "should destroy post28" do
    assert_difference('Post28.count', -1) do
      delete :destroy, :id => @post28.to_param
    end

    assert_redirected_to post28s_path
  end
end
