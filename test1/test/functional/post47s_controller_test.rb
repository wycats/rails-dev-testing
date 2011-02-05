require 'test_helper'

class Post47sControllerTest < ActionController::TestCase
  setup do
    @post47 = post47s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post47s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post47" do
    assert_difference('Post47.count') do
      post :create, :post47 => @post47.attributes
    end

    assert_redirected_to post47_path(assigns(:post47))
  end

  test "should show post47" do
    get :show, :id => @post47.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post47.to_param
    assert_response :success
  end

  test "should update post47" do
    put :update, :id => @post47.to_param, :post47 => @post47.attributes
    assert_redirected_to post47_path(assigns(:post47))
  end

  test "should destroy post47" do
    assert_difference('Post47.count', -1) do
      delete :destroy, :id => @post47.to_param
    end

    assert_redirected_to post47s_path
  end
end
