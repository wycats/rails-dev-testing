require 'test_helper'

class Post324sControllerTest < ActionController::TestCase
  setup do
    @post324 = post324s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post324s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post324" do
    assert_difference('Post324.count') do
      post :create, :post324 => @post324.attributes
    end

    assert_redirected_to post324_path(assigns(:post324))
  end

  test "should show post324" do
    get :show, :id => @post324.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post324.to_param
    assert_response :success
  end

  test "should update post324" do
    put :update, :id => @post324.to_param, :post324 => @post324.attributes
    assert_redirected_to post324_path(assigns(:post324))
  end

  test "should destroy post324" do
    assert_difference('Post324.count', -1) do
      delete :destroy, :id => @post324.to_param
    end

    assert_redirected_to post324s_path
  end
end
