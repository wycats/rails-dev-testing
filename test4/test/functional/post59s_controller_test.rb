require 'test_helper'

class Post59sControllerTest < ActionController::TestCase
  setup do
    @post59 = post59s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post59s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post59" do
    assert_difference('Post59.count') do
      post :create, :post59 => @post59.attributes
    end

    assert_redirected_to post59_path(assigns(:post59))
  end

  test "should show post59" do
    get :show, :id => @post59.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post59.to_param
    assert_response :success
  end

  test "should update post59" do
    put :update, :id => @post59.to_param, :post59 => @post59.attributes
    assert_redirected_to post59_path(assigns(:post59))
  end

  test "should destroy post59" do
    assert_difference('Post59.count', -1) do
      delete :destroy, :id => @post59.to_param
    end

    assert_redirected_to post59s_path
  end
end
