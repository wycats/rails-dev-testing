require 'test_helper'

class Post364sControllerTest < ActionController::TestCase
  setup do
    @post364 = post364s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post364s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post364" do
    assert_difference('Post364.count') do
      post :create, :post364 => @post364.attributes
    end

    assert_redirected_to post364_path(assigns(:post364))
  end

  test "should show post364" do
    get :show, :id => @post364.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post364.to_param
    assert_response :success
  end

  test "should update post364" do
    put :update, :id => @post364.to_param, :post364 => @post364.attributes
    assert_redirected_to post364_path(assigns(:post364))
  end

  test "should destroy post364" do
    assert_difference('Post364.count', -1) do
      delete :destroy, :id => @post364.to_param
    end

    assert_redirected_to post364s_path
  end
end
