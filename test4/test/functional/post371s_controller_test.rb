require 'test_helper'

class Post371sControllerTest < ActionController::TestCase
  setup do
    @post371 = post371s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post371s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post371" do
    assert_difference('Post371.count') do
      post :create, :post371 => @post371.attributes
    end

    assert_redirected_to post371_path(assigns(:post371))
  end

  test "should show post371" do
    get :show, :id => @post371.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post371.to_param
    assert_response :success
  end

  test "should update post371" do
    put :update, :id => @post371.to_param, :post371 => @post371.attributes
    assert_redirected_to post371_path(assigns(:post371))
  end

  test "should destroy post371" do
    assert_difference('Post371.count', -1) do
      delete :destroy, :id => @post371.to_param
    end

    assert_redirected_to post371s_path
  end
end
