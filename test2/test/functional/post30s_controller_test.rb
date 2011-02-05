require 'test_helper'

class Post30sControllerTest < ActionController::TestCase
  setup do
    @post30 = post30s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post30s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post30" do
    assert_difference('Post30.count') do
      post :create, :post30 => @post30.attributes
    end

    assert_redirected_to post30_path(assigns(:post30))
  end

  test "should show post30" do
    get :show, :id => @post30.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post30.to_param
    assert_response :success
  end

  test "should update post30" do
    put :update, :id => @post30.to_param, :post30 => @post30.attributes
    assert_redirected_to post30_path(assigns(:post30))
  end

  test "should destroy post30" do
    assert_difference('Post30.count', -1) do
      delete :destroy, :id => @post30.to_param
    end

    assert_redirected_to post30s_path
  end
end
