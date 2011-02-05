require 'test_helper'

class Post330sControllerTest < ActionController::TestCase
  setup do
    @post330 = post330s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post330s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post330" do
    assert_difference('Post330.count') do
      post :create, :post330 => @post330.attributes
    end

    assert_redirected_to post330_path(assigns(:post330))
  end

  test "should show post330" do
    get :show, :id => @post330.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post330.to_param
    assert_response :success
  end

  test "should update post330" do
    put :update, :id => @post330.to_param, :post330 => @post330.attributes
    assert_redirected_to post330_path(assigns(:post330))
  end

  test "should destroy post330" do
    assert_difference('Post330.count', -1) do
      delete :destroy, :id => @post330.to_param
    end

    assert_redirected_to post330s_path
  end
end
