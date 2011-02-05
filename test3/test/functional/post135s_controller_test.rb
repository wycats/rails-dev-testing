require 'test_helper'

class Post135sControllerTest < ActionController::TestCase
  setup do
    @post135 = post135s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post135s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post135" do
    assert_difference('Post135.count') do
      post :create, :post135 => @post135.attributes
    end

    assert_redirected_to post135_path(assigns(:post135))
  end

  test "should show post135" do
    get :show, :id => @post135.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post135.to_param
    assert_response :success
  end

  test "should update post135" do
    put :update, :id => @post135.to_param, :post135 => @post135.attributes
    assert_redirected_to post135_path(assigns(:post135))
  end

  test "should destroy post135" do
    assert_difference('Post135.count', -1) do
      delete :destroy, :id => @post135.to_param
    end

    assert_redirected_to post135s_path
  end
end
