require 'test_helper'

class Post273sControllerTest < ActionController::TestCase
  setup do
    @post273 = post273s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post273s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post273" do
    assert_difference('Post273.count') do
      post :create, :post273 => @post273.attributes
    end

    assert_redirected_to post273_path(assigns(:post273))
  end

  test "should show post273" do
    get :show, :id => @post273.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post273.to_param
    assert_response :success
  end

  test "should update post273" do
    put :update, :id => @post273.to_param, :post273 => @post273.attributes
    assert_redirected_to post273_path(assigns(:post273))
  end

  test "should destroy post273" do
    assert_difference('Post273.count', -1) do
      delete :destroy, :id => @post273.to_param
    end

    assert_redirected_to post273s_path
  end
end
