require 'test_helper'

class Post245sControllerTest < ActionController::TestCase
  setup do
    @post245 = post245s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post245s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post245" do
    assert_difference('Post245.count') do
      post :create, :post245 => @post245.attributes
    end

    assert_redirected_to post245_path(assigns(:post245))
  end

  test "should show post245" do
    get :show, :id => @post245.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post245.to_param
    assert_response :success
  end

  test "should update post245" do
    put :update, :id => @post245.to_param, :post245 => @post245.attributes
    assert_redirected_to post245_path(assigns(:post245))
  end

  test "should destroy post245" do
    assert_difference('Post245.count', -1) do
      delete :destroy, :id => @post245.to_param
    end

    assert_redirected_to post245s_path
  end
end
