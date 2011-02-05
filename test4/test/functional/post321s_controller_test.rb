require 'test_helper'

class Post321sControllerTest < ActionController::TestCase
  setup do
    @post321 = post321s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post321s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post321" do
    assert_difference('Post321.count') do
      post :create, :post321 => @post321.attributes
    end

    assert_redirected_to post321_path(assigns(:post321))
  end

  test "should show post321" do
    get :show, :id => @post321.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post321.to_param
    assert_response :success
  end

  test "should update post321" do
    put :update, :id => @post321.to_param, :post321 => @post321.attributes
    assert_redirected_to post321_path(assigns(:post321))
  end

  test "should destroy post321" do
    assert_difference('Post321.count', -1) do
      delete :destroy, :id => @post321.to_param
    end

    assert_redirected_to post321s_path
  end
end
