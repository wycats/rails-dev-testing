require 'test_helper'

class Post296sControllerTest < ActionController::TestCase
  setup do
    @post296 = post296s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post296s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post296" do
    assert_difference('Post296.count') do
      post :create, :post296 => @post296.attributes
    end

    assert_redirected_to post296_path(assigns(:post296))
  end

  test "should show post296" do
    get :show, :id => @post296.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post296.to_param
    assert_response :success
  end

  test "should update post296" do
    put :update, :id => @post296.to_param, :post296 => @post296.attributes
    assert_redirected_to post296_path(assigns(:post296))
  end

  test "should destroy post296" do
    assert_difference('Post296.count', -1) do
      delete :destroy, :id => @post296.to_param
    end

    assert_redirected_to post296s_path
  end
end
