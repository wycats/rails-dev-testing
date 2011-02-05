require 'test_helper'

class Post490sControllerTest < ActionController::TestCase
  setup do
    @post490 = post490s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post490s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post490" do
    assert_difference('Post490.count') do
      post :create, :post490 => @post490.attributes
    end

    assert_redirected_to post490_path(assigns(:post490))
  end

  test "should show post490" do
    get :show, :id => @post490.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post490.to_param
    assert_response :success
  end

  test "should update post490" do
    put :update, :id => @post490.to_param, :post490 => @post490.attributes
    assert_redirected_to post490_path(assigns(:post490))
  end

  test "should destroy post490" do
    assert_difference('Post490.count', -1) do
      delete :destroy, :id => @post490.to_param
    end

    assert_redirected_to post490s_path
  end
end
