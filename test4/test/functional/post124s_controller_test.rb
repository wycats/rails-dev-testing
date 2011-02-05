require 'test_helper'

class Post124sControllerTest < ActionController::TestCase
  setup do
    @post124 = post124s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post124s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post124" do
    assert_difference('Post124.count') do
      post :create, :post124 => @post124.attributes
    end

    assert_redirected_to post124_path(assigns(:post124))
  end

  test "should show post124" do
    get :show, :id => @post124.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post124.to_param
    assert_response :success
  end

  test "should update post124" do
    put :update, :id => @post124.to_param, :post124 => @post124.attributes
    assert_redirected_to post124_path(assigns(:post124))
  end

  test "should destroy post124" do
    assert_difference('Post124.count', -1) do
      delete :destroy, :id => @post124.to_param
    end

    assert_redirected_to post124s_path
  end
end
