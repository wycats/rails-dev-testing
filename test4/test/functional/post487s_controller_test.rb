require 'test_helper'

class Post487sControllerTest < ActionController::TestCase
  setup do
    @post487 = post487s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post487s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post487" do
    assert_difference('Post487.count') do
      post :create, :post487 => @post487.attributes
    end

    assert_redirected_to post487_path(assigns(:post487))
  end

  test "should show post487" do
    get :show, :id => @post487.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post487.to_param
    assert_response :success
  end

  test "should update post487" do
    put :update, :id => @post487.to_param, :post487 => @post487.attributes
    assert_redirected_to post487_path(assigns(:post487))
  end

  test "should destroy post487" do
    assert_difference('Post487.count', -1) do
      delete :destroy, :id => @post487.to_param
    end

    assert_redirected_to post487s_path
  end
end
