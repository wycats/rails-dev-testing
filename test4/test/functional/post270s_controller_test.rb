require 'test_helper'

class Post270sControllerTest < ActionController::TestCase
  setup do
    @post270 = post270s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post270s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post270" do
    assert_difference('Post270.count') do
      post :create, :post270 => @post270.attributes
    end

    assert_redirected_to post270_path(assigns(:post270))
  end

  test "should show post270" do
    get :show, :id => @post270.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post270.to_param
    assert_response :success
  end

  test "should update post270" do
    put :update, :id => @post270.to_param, :post270 => @post270.attributes
    assert_redirected_to post270_path(assigns(:post270))
  end

  test "should destroy post270" do
    assert_difference('Post270.count', -1) do
      delete :destroy, :id => @post270.to_param
    end

    assert_redirected_to post270s_path
  end
end
