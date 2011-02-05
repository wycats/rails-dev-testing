require 'test_helper'

class Post180sControllerTest < ActionController::TestCase
  setup do
    @post180 = post180s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post180s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post180" do
    assert_difference('Post180.count') do
      post :create, :post180 => @post180.attributes
    end

    assert_redirected_to post180_path(assigns(:post180))
  end

  test "should show post180" do
    get :show, :id => @post180.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post180.to_param
    assert_response :success
  end

  test "should update post180" do
    put :update, :id => @post180.to_param, :post180 => @post180.attributes
    assert_redirected_to post180_path(assigns(:post180))
  end

  test "should destroy post180" do
    assert_difference('Post180.count', -1) do
      delete :destroy, :id => @post180.to_param
    end

    assert_redirected_to post180s_path
  end
end
