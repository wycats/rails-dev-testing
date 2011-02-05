require 'test_helper'

class Post422sControllerTest < ActionController::TestCase
  setup do
    @post422 = post422s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post422s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post422" do
    assert_difference('Post422.count') do
      post :create, :post422 => @post422.attributes
    end

    assert_redirected_to post422_path(assigns(:post422))
  end

  test "should show post422" do
    get :show, :id => @post422.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post422.to_param
    assert_response :success
  end

  test "should update post422" do
    put :update, :id => @post422.to_param, :post422 => @post422.attributes
    assert_redirected_to post422_path(assigns(:post422))
  end

  test "should destroy post422" do
    assert_difference('Post422.count', -1) do
      delete :destroy, :id => @post422.to_param
    end

    assert_redirected_to post422s_path
  end
end
