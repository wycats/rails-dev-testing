require 'test_helper'

class Post164sControllerTest < ActionController::TestCase
  setup do
    @post164 = post164s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post164s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post164" do
    assert_difference('Post164.count') do
      post :create, :post164 => @post164.attributes
    end

    assert_redirected_to post164_path(assigns(:post164))
  end

  test "should show post164" do
    get :show, :id => @post164.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post164.to_param
    assert_response :success
  end

  test "should update post164" do
    put :update, :id => @post164.to_param, :post164 => @post164.attributes
    assert_redirected_to post164_path(assigns(:post164))
  end

  test "should destroy post164" do
    assert_difference('Post164.count', -1) do
      delete :destroy, :id => @post164.to_param
    end

    assert_redirected_to post164s_path
  end
end
