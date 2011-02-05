require 'test_helper'

class Post405sControllerTest < ActionController::TestCase
  setup do
    @post405 = post405s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post405s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post405" do
    assert_difference('Post405.count') do
      post :create, :post405 => @post405.attributes
    end

    assert_redirected_to post405_path(assigns(:post405))
  end

  test "should show post405" do
    get :show, :id => @post405.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post405.to_param
    assert_response :success
  end

  test "should update post405" do
    put :update, :id => @post405.to_param, :post405 => @post405.attributes
    assert_redirected_to post405_path(assigns(:post405))
  end

  test "should destroy post405" do
    assert_difference('Post405.count', -1) do
      delete :destroy, :id => @post405.to_param
    end

    assert_redirected_to post405s_path
  end
end
