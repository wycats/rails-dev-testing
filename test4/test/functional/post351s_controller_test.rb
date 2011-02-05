require 'test_helper'

class Post351sControllerTest < ActionController::TestCase
  setup do
    @post351 = post351s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post351s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post351" do
    assert_difference('Post351.count') do
      post :create, :post351 => @post351.attributes
    end

    assert_redirected_to post351_path(assigns(:post351))
  end

  test "should show post351" do
    get :show, :id => @post351.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post351.to_param
    assert_response :success
  end

  test "should update post351" do
    put :update, :id => @post351.to_param, :post351 => @post351.attributes
    assert_redirected_to post351_path(assigns(:post351))
  end

  test "should destroy post351" do
    assert_difference('Post351.count', -1) do
      delete :destroy, :id => @post351.to_param
    end

    assert_redirected_to post351s_path
  end
end
