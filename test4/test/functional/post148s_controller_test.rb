require 'test_helper'

class Post148sControllerTest < ActionController::TestCase
  setup do
    @post148 = post148s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post148s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post148" do
    assert_difference('Post148.count') do
      post :create, :post148 => @post148.attributes
    end

    assert_redirected_to post148_path(assigns(:post148))
  end

  test "should show post148" do
    get :show, :id => @post148.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post148.to_param
    assert_response :success
  end

  test "should update post148" do
    put :update, :id => @post148.to_param, :post148 => @post148.attributes
    assert_redirected_to post148_path(assigns(:post148))
  end

  test "should destroy post148" do
    assert_difference('Post148.count', -1) do
      delete :destroy, :id => @post148.to_param
    end

    assert_redirected_to post148s_path
  end
end
