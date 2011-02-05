require 'test_helper'

class Post268sControllerTest < ActionController::TestCase
  setup do
    @post268 = post268s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post268s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post268" do
    assert_difference('Post268.count') do
      post :create, :post268 => @post268.attributes
    end

    assert_redirected_to post268_path(assigns(:post268))
  end

  test "should show post268" do
    get :show, :id => @post268.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post268.to_param
    assert_response :success
  end

  test "should update post268" do
    put :update, :id => @post268.to_param, :post268 => @post268.attributes
    assert_redirected_to post268_path(assigns(:post268))
  end

  test "should destroy post268" do
    assert_difference('Post268.count', -1) do
      delete :destroy, :id => @post268.to_param
    end

    assert_redirected_to post268s_path
  end
end
