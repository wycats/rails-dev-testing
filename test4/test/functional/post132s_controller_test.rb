require 'test_helper'

class Post132sControllerTest < ActionController::TestCase
  setup do
    @post132 = post132s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post132s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post132" do
    assert_difference('Post132.count') do
      post :create, :post132 => @post132.attributes
    end

    assert_redirected_to post132_path(assigns(:post132))
  end

  test "should show post132" do
    get :show, :id => @post132.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post132.to_param
    assert_response :success
  end

  test "should update post132" do
    put :update, :id => @post132.to_param, :post132 => @post132.attributes
    assert_redirected_to post132_path(assigns(:post132))
  end

  test "should destroy post132" do
    assert_difference('Post132.count', -1) do
      delete :destroy, :id => @post132.to_param
    end

    assert_redirected_to post132s_path
  end
end
