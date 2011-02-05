require 'test_helper'

class Post309sControllerTest < ActionController::TestCase
  setup do
    @post309 = post309s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post309s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post309" do
    assert_difference('Post309.count') do
      post :create, :post309 => @post309.attributes
    end

    assert_redirected_to post309_path(assigns(:post309))
  end

  test "should show post309" do
    get :show, :id => @post309.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post309.to_param
    assert_response :success
  end

  test "should update post309" do
    put :update, :id => @post309.to_param, :post309 => @post309.attributes
    assert_redirected_to post309_path(assigns(:post309))
  end

  test "should destroy post309" do
    assert_difference('Post309.count', -1) do
      delete :destroy, :id => @post309.to_param
    end

    assert_redirected_to post309s_path
  end
end
