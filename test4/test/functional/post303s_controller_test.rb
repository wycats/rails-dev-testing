require 'test_helper'

class Post303sControllerTest < ActionController::TestCase
  setup do
    @post303 = post303s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post303s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post303" do
    assert_difference('Post303.count') do
      post :create, :post303 => @post303.attributes
    end

    assert_redirected_to post303_path(assigns(:post303))
  end

  test "should show post303" do
    get :show, :id => @post303.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post303.to_param
    assert_response :success
  end

  test "should update post303" do
    put :update, :id => @post303.to_param, :post303 => @post303.attributes
    assert_redirected_to post303_path(assigns(:post303))
  end

  test "should destroy post303" do
    assert_difference('Post303.count', -1) do
      delete :destroy, :id => @post303.to_param
    end

    assert_redirected_to post303s_path
  end
end
