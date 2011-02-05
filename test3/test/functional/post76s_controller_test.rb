require 'test_helper'

class Post76sControllerTest < ActionController::TestCase
  setup do
    @post76 = post76s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post76s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post76" do
    assert_difference('Post76.count') do
      post :create, :post76 => @post76.attributes
    end

    assert_redirected_to post76_path(assigns(:post76))
  end

  test "should show post76" do
    get :show, :id => @post76.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post76.to_param
    assert_response :success
  end

  test "should update post76" do
    put :update, :id => @post76.to_param, :post76 => @post76.attributes
    assert_redirected_to post76_path(assigns(:post76))
  end

  test "should destroy post76" do
    assert_difference('Post76.count', -1) do
      delete :destroy, :id => @post76.to_param
    end

    assert_redirected_to post76s_path
  end
end
