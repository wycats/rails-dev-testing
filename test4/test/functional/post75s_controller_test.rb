require 'test_helper'

class Post75sControllerTest < ActionController::TestCase
  setup do
    @post75 = post75s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post75s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post75" do
    assert_difference('Post75.count') do
      post :create, :post75 => @post75.attributes
    end

    assert_redirected_to post75_path(assigns(:post75))
  end

  test "should show post75" do
    get :show, :id => @post75.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post75.to_param
    assert_response :success
  end

  test "should update post75" do
    put :update, :id => @post75.to_param, :post75 => @post75.attributes
    assert_redirected_to post75_path(assigns(:post75))
  end

  test "should destroy post75" do
    assert_difference('Post75.count', -1) do
      delete :destroy, :id => @post75.to_param
    end

    assert_redirected_to post75s_path
  end
end
