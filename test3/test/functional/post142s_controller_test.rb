require 'test_helper'

class Post142sControllerTest < ActionController::TestCase
  setup do
    @post142 = post142s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post142s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post142" do
    assert_difference('Post142.count') do
      post :create, :post142 => @post142.attributes
    end

    assert_redirected_to post142_path(assigns(:post142))
  end

  test "should show post142" do
    get :show, :id => @post142.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post142.to_param
    assert_response :success
  end

  test "should update post142" do
    put :update, :id => @post142.to_param, :post142 => @post142.attributes
    assert_redirected_to post142_path(assigns(:post142))
  end

  test "should destroy post142" do
    assert_difference('Post142.count', -1) do
      delete :destroy, :id => @post142.to_param
    end

    assert_redirected_to post142s_path
  end
end
