require 'test_helper'

class Post272sControllerTest < ActionController::TestCase
  setup do
    @post272 = post272s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post272s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post272" do
    assert_difference('Post272.count') do
      post :create, :post272 => @post272.attributes
    end

    assert_redirected_to post272_path(assigns(:post272))
  end

  test "should show post272" do
    get :show, :id => @post272.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post272.to_param
    assert_response :success
  end

  test "should update post272" do
    put :update, :id => @post272.to_param, :post272 => @post272.attributes
    assert_redirected_to post272_path(assigns(:post272))
  end

  test "should destroy post272" do
    assert_difference('Post272.count', -1) do
      delete :destroy, :id => @post272.to_param
    end

    assert_redirected_to post272s_path
  end
end
