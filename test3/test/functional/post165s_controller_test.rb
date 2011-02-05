require 'test_helper'

class Post165sControllerTest < ActionController::TestCase
  setup do
    @post165 = post165s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post165s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post165" do
    assert_difference('Post165.count') do
      post :create, :post165 => @post165.attributes
    end

    assert_redirected_to post165_path(assigns(:post165))
  end

  test "should show post165" do
    get :show, :id => @post165.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post165.to_param
    assert_response :success
  end

  test "should update post165" do
    put :update, :id => @post165.to_param, :post165 => @post165.attributes
    assert_redirected_to post165_path(assigns(:post165))
  end

  test "should destroy post165" do
    assert_difference('Post165.count', -1) do
      delete :destroy, :id => @post165.to_param
    end

    assert_redirected_to post165s_path
  end
end
