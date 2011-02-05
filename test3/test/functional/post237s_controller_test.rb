require 'test_helper'

class Post237sControllerTest < ActionController::TestCase
  setup do
    @post237 = post237s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post237s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post237" do
    assert_difference('Post237.count') do
      post :create, :post237 => @post237.attributes
    end

    assert_redirected_to post237_path(assigns(:post237))
  end

  test "should show post237" do
    get :show, :id => @post237.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post237.to_param
    assert_response :success
  end

  test "should update post237" do
    put :update, :id => @post237.to_param, :post237 => @post237.attributes
    assert_redirected_to post237_path(assigns(:post237))
  end

  test "should destroy post237" do
    assert_difference('Post237.count', -1) do
      delete :destroy, :id => @post237.to_param
    end

    assert_redirected_to post237s_path
  end
end
