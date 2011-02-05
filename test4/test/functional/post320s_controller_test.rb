require 'test_helper'

class Post320sControllerTest < ActionController::TestCase
  setup do
    @post320 = post320s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post320s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post320" do
    assert_difference('Post320.count') do
      post :create, :post320 => @post320.attributes
    end

    assert_redirected_to post320_path(assigns(:post320))
  end

  test "should show post320" do
    get :show, :id => @post320.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post320.to_param
    assert_response :success
  end

  test "should update post320" do
    put :update, :id => @post320.to_param, :post320 => @post320.attributes
    assert_redirected_to post320_path(assigns(:post320))
  end

  test "should destroy post320" do
    assert_difference('Post320.count', -1) do
      delete :destroy, :id => @post320.to_param
    end

    assert_redirected_to post320s_path
  end
end
