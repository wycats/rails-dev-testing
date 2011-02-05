require 'test_helper'

class Post325sControllerTest < ActionController::TestCase
  setup do
    @post325 = post325s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post325s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post325" do
    assert_difference('Post325.count') do
      post :create, :post325 => @post325.attributes
    end

    assert_redirected_to post325_path(assigns(:post325))
  end

  test "should show post325" do
    get :show, :id => @post325.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post325.to_param
    assert_response :success
  end

  test "should update post325" do
    put :update, :id => @post325.to_param, :post325 => @post325.attributes
    assert_redirected_to post325_path(assigns(:post325))
  end

  test "should destroy post325" do
    assert_difference('Post325.count', -1) do
      delete :destroy, :id => @post325.to_param
    end

    assert_redirected_to post325s_path
  end
end
