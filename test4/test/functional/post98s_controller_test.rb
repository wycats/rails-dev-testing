require 'test_helper'

class Post98sControllerTest < ActionController::TestCase
  setup do
    @post98 = post98s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post98s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post98" do
    assert_difference('Post98.count') do
      post :create, :post98 => @post98.attributes
    end

    assert_redirected_to post98_path(assigns(:post98))
  end

  test "should show post98" do
    get :show, :id => @post98.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post98.to_param
    assert_response :success
  end

  test "should update post98" do
    put :update, :id => @post98.to_param, :post98 => @post98.attributes
    assert_redirected_to post98_path(assigns(:post98))
  end

  test "should destroy post98" do
    assert_difference('Post98.count', -1) do
      delete :destroy, :id => @post98.to_param
    end

    assert_redirected_to post98s_path
  end
end
