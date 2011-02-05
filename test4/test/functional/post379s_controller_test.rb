require 'test_helper'

class Post379sControllerTest < ActionController::TestCase
  setup do
    @post379 = post379s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post379s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post379" do
    assert_difference('Post379.count') do
      post :create, :post379 => @post379.attributes
    end

    assert_redirected_to post379_path(assigns(:post379))
  end

  test "should show post379" do
    get :show, :id => @post379.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post379.to_param
    assert_response :success
  end

  test "should update post379" do
    put :update, :id => @post379.to_param, :post379 => @post379.attributes
    assert_redirected_to post379_path(assigns(:post379))
  end

  test "should destroy post379" do
    assert_difference('Post379.count', -1) do
      delete :destroy, :id => @post379.to_param
    end

    assert_redirected_to post379s_path
  end
end
