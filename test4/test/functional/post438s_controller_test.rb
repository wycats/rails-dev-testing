require 'test_helper'

class Post438sControllerTest < ActionController::TestCase
  setup do
    @post438 = post438s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post438s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post438" do
    assert_difference('Post438.count') do
      post :create, :post438 => @post438.attributes
    end

    assert_redirected_to post438_path(assigns(:post438))
  end

  test "should show post438" do
    get :show, :id => @post438.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post438.to_param
    assert_response :success
  end

  test "should update post438" do
    put :update, :id => @post438.to_param, :post438 => @post438.attributes
    assert_redirected_to post438_path(assigns(:post438))
  end

  test "should destroy post438" do
    assert_difference('Post438.count', -1) do
      delete :destroy, :id => @post438.to_param
    end

    assert_redirected_to post438s_path
  end
end
