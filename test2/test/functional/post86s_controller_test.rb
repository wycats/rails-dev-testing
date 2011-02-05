require 'test_helper'

class Post86sControllerTest < ActionController::TestCase
  setup do
    @post86 = post86s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post86s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post86" do
    assert_difference('Post86.count') do
      post :create, :post86 => @post86.attributes
    end

    assert_redirected_to post86_path(assigns(:post86))
  end

  test "should show post86" do
    get :show, :id => @post86.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post86.to_param
    assert_response :success
  end

  test "should update post86" do
    put :update, :id => @post86.to_param, :post86 => @post86.attributes
    assert_redirected_to post86_path(assigns(:post86))
  end

  test "should destroy post86" do
    assert_difference('Post86.count', -1) do
      delete :destroy, :id => @post86.to_param
    end

    assert_redirected_to post86s_path
  end
end
