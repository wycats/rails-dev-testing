require 'test_helper'

class Post209sControllerTest < ActionController::TestCase
  setup do
    @post209 = post209s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post209s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post209" do
    assert_difference('Post209.count') do
      post :create, :post209 => @post209.attributes
    end

    assert_redirected_to post209_path(assigns(:post209))
  end

  test "should show post209" do
    get :show, :id => @post209.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post209.to_param
    assert_response :success
  end

  test "should update post209" do
    put :update, :id => @post209.to_param, :post209 => @post209.attributes
    assert_redirected_to post209_path(assigns(:post209))
  end

  test "should destroy post209" do
    assert_difference('Post209.count', -1) do
      delete :destroy, :id => @post209.to_param
    end

    assert_redirected_to post209s_path
  end
end
