require 'test_helper'

class Post376sControllerTest < ActionController::TestCase
  setup do
    @post376 = post376s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post376s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post376" do
    assert_difference('Post376.count') do
      post :create, :post376 => @post376.attributes
    end

    assert_redirected_to post376_path(assigns(:post376))
  end

  test "should show post376" do
    get :show, :id => @post376.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post376.to_param
    assert_response :success
  end

  test "should update post376" do
    put :update, :id => @post376.to_param, :post376 => @post376.attributes
    assert_redirected_to post376_path(assigns(:post376))
  end

  test "should destroy post376" do
    assert_difference('Post376.count', -1) do
      delete :destroy, :id => @post376.to_param
    end

    assert_redirected_to post376s_path
  end
end
