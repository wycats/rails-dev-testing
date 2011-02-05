require 'test_helper'

class Post126sControllerTest < ActionController::TestCase
  setup do
    @post126 = post126s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post126s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post126" do
    assert_difference('Post126.count') do
      post :create, :post126 => @post126.attributes
    end

    assert_redirected_to post126_path(assigns(:post126))
  end

  test "should show post126" do
    get :show, :id => @post126.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post126.to_param
    assert_response :success
  end

  test "should update post126" do
    put :update, :id => @post126.to_param, :post126 => @post126.attributes
    assert_redirected_to post126_path(assigns(:post126))
  end

  test "should destroy post126" do
    assert_difference('Post126.count', -1) do
      delete :destroy, :id => @post126.to_param
    end

    assert_redirected_to post126s_path
  end
end
