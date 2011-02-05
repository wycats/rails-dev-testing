require 'test_helper'

class Post170sControllerTest < ActionController::TestCase
  setup do
    @post170 = post170s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post170s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post170" do
    assert_difference('Post170.count') do
      post :create, :post170 => @post170.attributes
    end

    assert_redirected_to post170_path(assigns(:post170))
  end

  test "should show post170" do
    get :show, :id => @post170.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post170.to_param
    assert_response :success
  end

  test "should update post170" do
    put :update, :id => @post170.to_param, :post170 => @post170.attributes
    assert_redirected_to post170_path(assigns(:post170))
  end

  test "should destroy post170" do
    assert_difference('Post170.count', -1) do
      delete :destroy, :id => @post170.to_param
    end

    assert_redirected_to post170s_path
  end
end
