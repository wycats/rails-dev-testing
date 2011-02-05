require 'test_helper'

class Post451sControllerTest < ActionController::TestCase
  setup do
    @post451 = post451s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post451s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post451" do
    assert_difference('Post451.count') do
      post :create, :post451 => @post451.attributes
    end

    assert_redirected_to post451_path(assigns(:post451))
  end

  test "should show post451" do
    get :show, :id => @post451.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post451.to_param
    assert_response :success
  end

  test "should update post451" do
    put :update, :id => @post451.to_param, :post451 => @post451.attributes
    assert_redirected_to post451_path(assigns(:post451))
  end

  test "should destroy post451" do
    assert_difference('Post451.count', -1) do
      delete :destroy, :id => @post451.to_param
    end

    assert_redirected_to post451s_path
  end
end
