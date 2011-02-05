require 'test_helper'

class Post58sControllerTest < ActionController::TestCase
  setup do
    @post58 = post58s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post58s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post58" do
    assert_difference('Post58.count') do
      post :create, :post58 => @post58.attributes
    end

    assert_redirected_to post58_path(assigns(:post58))
  end

  test "should show post58" do
    get :show, :id => @post58.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post58.to_param
    assert_response :success
  end

  test "should update post58" do
    put :update, :id => @post58.to_param, :post58 => @post58.attributes
    assert_redirected_to post58_path(assigns(:post58))
  end

  test "should destroy post58" do
    assert_difference('Post58.count', -1) do
      delete :destroy, :id => @post58.to_param
    end

    assert_redirected_to post58s_path
  end
end
