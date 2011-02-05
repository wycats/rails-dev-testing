require 'test_helper'

class Post341sControllerTest < ActionController::TestCase
  setup do
    @post341 = post341s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post341s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post341" do
    assert_difference('Post341.count') do
      post :create, :post341 => @post341.attributes
    end

    assert_redirected_to post341_path(assigns(:post341))
  end

  test "should show post341" do
    get :show, :id => @post341.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post341.to_param
    assert_response :success
  end

  test "should update post341" do
    put :update, :id => @post341.to_param, :post341 => @post341.attributes
    assert_redirected_to post341_path(assigns(:post341))
  end

  test "should destroy post341" do
    assert_difference('Post341.count', -1) do
      delete :destroy, :id => @post341.to_param
    end

    assert_redirected_to post341s_path
  end
end
