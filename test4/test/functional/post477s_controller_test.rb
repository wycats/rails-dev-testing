require 'test_helper'

class Post477sControllerTest < ActionController::TestCase
  setup do
    @post477 = post477s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post477s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post477" do
    assert_difference('Post477.count') do
      post :create, :post477 => @post477.attributes
    end

    assert_redirected_to post477_path(assigns(:post477))
  end

  test "should show post477" do
    get :show, :id => @post477.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post477.to_param
    assert_response :success
  end

  test "should update post477" do
    put :update, :id => @post477.to_param, :post477 => @post477.attributes
    assert_redirected_to post477_path(assigns(:post477))
  end

  test "should destroy post477" do
    assert_difference('Post477.count', -1) do
      delete :destroy, :id => @post477.to_param
    end

    assert_redirected_to post477s_path
  end
end
