require 'test_helper'

class Post366sControllerTest < ActionController::TestCase
  setup do
    @post366 = post366s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post366s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post366" do
    assert_difference('Post366.count') do
      post :create, :post366 => @post366.attributes
    end

    assert_redirected_to post366_path(assigns(:post366))
  end

  test "should show post366" do
    get :show, :id => @post366.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post366.to_param
    assert_response :success
  end

  test "should update post366" do
    put :update, :id => @post366.to_param, :post366 => @post366.attributes
    assert_redirected_to post366_path(assigns(:post366))
  end

  test "should destroy post366" do
    assert_difference('Post366.count', -1) do
      delete :destroy, :id => @post366.to_param
    end

    assert_redirected_to post366s_path
  end
end
