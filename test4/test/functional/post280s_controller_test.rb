require 'test_helper'

class Post280sControllerTest < ActionController::TestCase
  setup do
    @post280 = post280s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post280s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post280" do
    assert_difference('Post280.count') do
      post :create, :post280 => @post280.attributes
    end

    assert_redirected_to post280_path(assigns(:post280))
  end

  test "should show post280" do
    get :show, :id => @post280.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post280.to_param
    assert_response :success
  end

  test "should update post280" do
    put :update, :id => @post280.to_param, :post280 => @post280.attributes
    assert_redirected_to post280_path(assigns(:post280))
  end

  test "should destroy post280" do
    assert_difference('Post280.count', -1) do
      delete :destroy, :id => @post280.to_param
    end

    assert_redirected_to post280s_path
  end
end
