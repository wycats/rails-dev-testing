require 'test_helper'

class Post66sControllerTest < ActionController::TestCase
  setup do
    @post66 = post66s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post66s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post66" do
    assert_difference('Post66.count') do
      post :create, :post66 => @post66.attributes
    end

    assert_redirected_to post66_path(assigns(:post66))
  end

  test "should show post66" do
    get :show, :id => @post66.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post66.to_param
    assert_response :success
  end

  test "should update post66" do
    put :update, :id => @post66.to_param, :post66 => @post66.attributes
    assert_redirected_to post66_path(assigns(:post66))
  end

  test "should destroy post66" do
    assert_difference('Post66.count', -1) do
      delete :destroy, :id => @post66.to_param
    end

    assert_redirected_to post66s_path
  end
end
