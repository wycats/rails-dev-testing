require 'test_helper'

class Post484sControllerTest < ActionController::TestCase
  setup do
    @post484 = post484s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post484s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post484" do
    assert_difference('Post484.count') do
      post :create, :post484 => @post484.attributes
    end

    assert_redirected_to post484_path(assigns(:post484))
  end

  test "should show post484" do
    get :show, :id => @post484.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post484.to_param
    assert_response :success
  end

  test "should update post484" do
    put :update, :id => @post484.to_param, :post484 => @post484.attributes
    assert_redirected_to post484_path(assigns(:post484))
  end

  test "should destroy post484" do
    assert_difference('Post484.count', -1) do
      delete :destroy, :id => @post484.to_param
    end

    assert_redirected_to post484s_path
  end
end
