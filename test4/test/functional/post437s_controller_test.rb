require 'test_helper'

class Post437sControllerTest < ActionController::TestCase
  setup do
    @post437 = post437s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post437s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post437" do
    assert_difference('Post437.count') do
      post :create, :post437 => @post437.attributes
    end

    assert_redirected_to post437_path(assigns(:post437))
  end

  test "should show post437" do
    get :show, :id => @post437.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post437.to_param
    assert_response :success
  end

  test "should update post437" do
    put :update, :id => @post437.to_param, :post437 => @post437.attributes
    assert_redirected_to post437_path(assigns(:post437))
  end

  test "should destroy post437" do
    assert_difference('Post437.count', -1) do
      delete :destroy, :id => @post437.to_param
    end

    assert_redirected_to post437s_path
  end
end
