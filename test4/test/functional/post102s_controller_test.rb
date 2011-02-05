require 'test_helper'

class Post102sControllerTest < ActionController::TestCase
  setup do
    @post102 = post102s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post102s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post102" do
    assert_difference('Post102.count') do
      post :create, :post102 => @post102.attributes
    end

    assert_redirected_to post102_path(assigns(:post102))
  end

  test "should show post102" do
    get :show, :id => @post102.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post102.to_param
    assert_response :success
  end

  test "should update post102" do
    put :update, :id => @post102.to_param, :post102 => @post102.attributes
    assert_redirected_to post102_path(assigns(:post102))
  end

  test "should destroy post102" do
    assert_difference('Post102.count', -1) do
      delete :destroy, :id => @post102.to_param
    end

    assert_redirected_to post102s_path
  end
end
