require 'test_helper'

class Post498sControllerTest < ActionController::TestCase
  setup do
    @post498 = post498s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post498s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post498" do
    assert_difference('Post498.count') do
      post :create, :post498 => @post498.attributes
    end

    assert_redirected_to post498_path(assigns(:post498))
  end

  test "should show post498" do
    get :show, :id => @post498.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post498.to_param
    assert_response :success
  end

  test "should update post498" do
    put :update, :id => @post498.to_param, :post498 => @post498.attributes
    assert_redirected_to post498_path(assigns(:post498))
  end

  test "should destroy post498" do
    assert_difference('Post498.count', -1) do
      delete :destroy, :id => @post498.to_param
    end

    assert_redirected_to post498s_path
  end
end
