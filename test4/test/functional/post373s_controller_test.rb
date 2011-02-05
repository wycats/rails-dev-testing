require 'test_helper'

class Post373sControllerTest < ActionController::TestCase
  setup do
    @post373 = post373s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post373s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post373" do
    assert_difference('Post373.count') do
      post :create, :post373 => @post373.attributes
    end

    assert_redirected_to post373_path(assigns(:post373))
  end

  test "should show post373" do
    get :show, :id => @post373.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post373.to_param
    assert_response :success
  end

  test "should update post373" do
    put :update, :id => @post373.to_param, :post373 => @post373.attributes
    assert_redirected_to post373_path(assigns(:post373))
  end

  test "should destroy post373" do
    assert_difference('Post373.count', -1) do
      delete :destroy, :id => @post373.to_param
    end

    assert_redirected_to post373s_path
  end
end
