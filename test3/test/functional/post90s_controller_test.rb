require 'test_helper'

class Post90sControllerTest < ActionController::TestCase
  setup do
    @post90 = post90s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post90s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post90" do
    assert_difference('Post90.count') do
      post :create, :post90 => @post90.attributes
    end

    assert_redirected_to post90_path(assigns(:post90))
  end

  test "should show post90" do
    get :show, :id => @post90.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post90.to_param
    assert_response :success
  end

  test "should update post90" do
    put :update, :id => @post90.to_param, :post90 => @post90.attributes
    assert_redirected_to post90_path(assigns(:post90))
  end

  test "should destroy post90" do
    assert_difference('Post90.count', -1) do
      delete :destroy, :id => @post90.to_param
    end

    assert_redirected_to post90s_path
  end
end
