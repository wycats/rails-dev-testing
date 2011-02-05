require 'test_helper'

class Post186sControllerTest < ActionController::TestCase
  setup do
    @post186 = post186s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post186s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post186" do
    assert_difference('Post186.count') do
      post :create, :post186 => @post186.attributes
    end

    assert_redirected_to post186_path(assigns(:post186))
  end

  test "should show post186" do
    get :show, :id => @post186.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post186.to_param
    assert_response :success
  end

  test "should update post186" do
    put :update, :id => @post186.to_param, :post186 => @post186.attributes
    assert_redirected_to post186_path(assigns(:post186))
  end

  test "should destroy post186" do
    assert_difference('Post186.count', -1) do
      delete :destroy, :id => @post186.to_param
    end

    assert_redirected_to post186s_path
  end
end
