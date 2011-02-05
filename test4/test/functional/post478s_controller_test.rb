require 'test_helper'

class Post478sControllerTest < ActionController::TestCase
  setup do
    @post478 = post478s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post478s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post478" do
    assert_difference('Post478.count') do
      post :create, :post478 => @post478.attributes
    end

    assert_redirected_to post478_path(assigns(:post478))
  end

  test "should show post478" do
    get :show, :id => @post478.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post478.to_param
    assert_response :success
  end

  test "should update post478" do
    put :update, :id => @post478.to_param, :post478 => @post478.attributes
    assert_redirected_to post478_path(assigns(:post478))
  end

  test "should destroy post478" do
    assert_difference('Post478.count', -1) do
      delete :destroy, :id => @post478.to_param
    end

    assert_redirected_to post478s_path
  end
end
