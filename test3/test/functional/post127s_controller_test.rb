require 'test_helper'

class Post127sControllerTest < ActionController::TestCase
  setup do
    @post127 = post127s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post127s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post127" do
    assert_difference('Post127.count') do
      post :create, :post127 => @post127.attributes
    end

    assert_redirected_to post127_path(assigns(:post127))
  end

  test "should show post127" do
    get :show, :id => @post127.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post127.to_param
    assert_response :success
  end

  test "should update post127" do
    put :update, :id => @post127.to_param, :post127 => @post127.attributes
    assert_redirected_to post127_path(assigns(:post127))
  end

  test "should destroy post127" do
    assert_difference('Post127.count', -1) do
      delete :destroy, :id => @post127.to_param
    end

    assert_redirected_to post127s_path
  end
end
