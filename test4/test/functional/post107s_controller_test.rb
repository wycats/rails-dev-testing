require 'test_helper'

class Post107sControllerTest < ActionController::TestCase
  setup do
    @post107 = post107s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post107s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post107" do
    assert_difference('Post107.count') do
      post :create, :post107 => @post107.attributes
    end

    assert_redirected_to post107_path(assigns(:post107))
  end

  test "should show post107" do
    get :show, :id => @post107.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post107.to_param
    assert_response :success
  end

  test "should update post107" do
    put :update, :id => @post107.to_param, :post107 => @post107.attributes
    assert_redirected_to post107_path(assigns(:post107))
  end

  test "should destroy post107" do
    assert_difference('Post107.count', -1) do
      delete :destroy, :id => @post107.to_param
    end

    assert_redirected_to post107s_path
  end
end
