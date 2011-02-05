require 'test_helper'

class Post96sControllerTest < ActionController::TestCase
  setup do
    @post96 = post96s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post96s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post96" do
    assert_difference('Post96.count') do
      post :create, :post96 => @post96.attributes
    end

    assert_redirected_to post96_path(assigns(:post96))
  end

  test "should show post96" do
    get :show, :id => @post96.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post96.to_param
    assert_response :success
  end

  test "should update post96" do
    put :update, :id => @post96.to_param, :post96 => @post96.attributes
    assert_redirected_to post96_path(assigns(:post96))
  end

  test "should destroy post96" do
    assert_difference('Post96.count', -1) do
      delete :destroy, :id => @post96.to_param
    end

    assert_redirected_to post96s_path
  end
end
