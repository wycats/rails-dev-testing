require 'test_helper'

class Post160sControllerTest < ActionController::TestCase
  setup do
    @post160 = post160s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post160s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post160" do
    assert_difference('Post160.count') do
      post :create, :post160 => @post160.attributes
    end

    assert_redirected_to post160_path(assigns(:post160))
  end

  test "should show post160" do
    get :show, :id => @post160.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post160.to_param
    assert_response :success
  end

  test "should update post160" do
    put :update, :id => @post160.to_param, :post160 => @post160.attributes
    assert_redirected_to post160_path(assigns(:post160))
  end

  test "should destroy post160" do
    assert_difference('Post160.count', -1) do
      delete :destroy, :id => @post160.to_param
    end

    assert_redirected_to post160s_path
  end
end
