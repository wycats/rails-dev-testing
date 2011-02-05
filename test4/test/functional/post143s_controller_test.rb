require 'test_helper'

class Post143sControllerTest < ActionController::TestCase
  setup do
    @post143 = post143s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post143s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post143" do
    assert_difference('Post143.count') do
      post :create, :post143 => @post143.attributes
    end

    assert_redirected_to post143_path(assigns(:post143))
  end

  test "should show post143" do
    get :show, :id => @post143.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post143.to_param
    assert_response :success
  end

  test "should update post143" do
    put :update, :id => @post143.to_param, :post143 => @post143.attributes
    assert_redirected_to post143_path(assigns(:post143))
  end

  test "should destroy post143" do
    assert_difference('Post143.count', -1) do
      delete :destroy, :id => @post143.to_param
    end

    assert_redirected_to post143s_path
  end
end
