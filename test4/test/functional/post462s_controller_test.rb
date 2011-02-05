require 'test_helper'

class Post462sControllerTest < ActionController::TestCase
  setup do
    @post462 = post462s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post462s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post462" do
    assert_difference('Post462.count') do
      post :create, :post462 => @post462.attributes
    end

    assert_redirected_to post462_path(assigns(:post462))
  end

  test "should show post462" do
    get :show, :id => @post462.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post462.to_param
    assert_response :success
  end

  test "should update post462" do
    put :update, :id => @post462.to_param, :post462 => @post462.attributes
    assert_redirected_to post462_path(assigns(:post462))
  end

  test "should destroy post462" do
    assert_difference('Post462.count', -1) do
      delete :destroy, :id => @post462.to_param
    end

    assert_redirected_to post462s_path
  end
end
