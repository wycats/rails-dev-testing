require 'test_helper'

class Post252sControllerTest < ActionController::TestCase
  setup do
    @post252 = post252s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post252s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post252" do
    assert_difference('Post252.count') do
      post :create, :post252 => @post252.attributes
    end

    assert_redirected_to post252_path(assigns(:post252))
  end

  test "should show post252" do
    get :show, :id => @post252.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post252.to_param
    assert_response :success
  end

  test "should update post252" do
    put :update, :id => @post252.to_param, :post252 => @post252.attributes
    assert_redirected_to post252_path(assigns(:post252))
  end

  test "should destroy post252" do
    assert_difference('Post252.count', -1) do
      delete :destroy, :id => @post252.to_param
    end

    assert_redirected_to post252s_path
  end
end
