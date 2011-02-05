require 'test_helper'

class Post97sControllerTest < ActionController::TestCase
  setup do
    @post97 = post97s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post97s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post97" do
    assert_difference('Post97.count') do
      post :create, :post97 => @post97.attributes
    end

    assert_redirected_to post97_path(assigns(:post97))
  end

  test "should show post97" do
    get :show, :id => @post97.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post97.to_param
    assert_response :success
  end

  test "should update post97" do
    put :update, :id => @post97.to_param, :post97 => @post97.attributes
    assert_redirected_to post97_path(assigns(:post97))
  end

  test "should destroy post97" do
    assert_difference('Post97.count', -1) do
      delete :destroy, :id => @post97.to_param
    end

    assert_redirected_to post97s_path
  end
end
