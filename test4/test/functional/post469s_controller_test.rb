require 'test_helper'

class Post469sControllerTest < ActionController::TestCase
  setup do
    @post469 = post469s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post469s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post469" do
    assert_difference('Post469.count') do
      post :create, :post469 => @post469.attributes
    end

    assert_redirected_to post469_path(assigns(:post469))
  end

  test "should show post469" do
    get :show, :id => @post469.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post469.to_param
    assert_response :success
  end

  test "should update post469" do
    put :update, :id => @post469.to_param, :post469 => @post469.attributes
    assert_redirected_to post469_path(assigns(:post469))
  end

  test "should destroy post469" do
    assert_difference('Post469.count', -1) do
      delete :destroy, :id => @post469.to_param
    end

    assert_redirected_to post469s_path
  end
end
