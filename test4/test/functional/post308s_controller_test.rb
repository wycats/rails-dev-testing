require 'test_helper'

class Post308sControllerTest < ActionController::TestCase
  setup do
    @post308 = post308s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post308s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post308" do
    assert_difference('Post308.count') do
      post :create, :post308 => @post308.attributes
    end

    assert_redirected_to post308_path(assigns(:post308))
  end

  test "should show post308" do
    get :show, :id => @post308.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post308.to_param
    assert_response :success
  end

  test "should update post308" do
    put :update, :id => @post308.to_param, :post308 => @post308.attributes
    assert_redirected_to post308_path(assigns(:post308))
  end

  test "should destroy post308" do
    assert_difference('Post308.count', -1) do
      delete :destroy, :id => @post308.to_param
    end

    assert_redirected_to post308s_path
  end
end
