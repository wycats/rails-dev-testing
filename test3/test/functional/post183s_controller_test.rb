require 'test_helper'

class Post183sControllerTest < ActionController::TestCase
  setup do
    @post183 = post183s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post183s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post183" do
    assert_difference('Post183.count') do
      post :create, :post183 => @post183.attributes
    end

    assert_redirected_to post183_path(assigns(:post183))
  end

  test "should show post183" do
    get :show, :id => @post183.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post183.to_param
    assert_response :success
  end

  test "should update post183" do
    put :update, :id => @post183.to_param, :post183 => @post183.attributes
    assert_redirected_to post183_path(assigns(:post183))
  end

  test "should destroy post183" do
    assert_difference('Post183.count', -1) do
      delete :destroy, :id => @post183.to_param
    end

    assert_redirected_to post183s_path
  end
end
