require 'test_helper'

class Post269sControllerTest < ActionController::TestCase
  setup do
    @post269 = post269s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post269s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post269" do
    assert_difference('Post269.count') do
      post :create, :post269 => @post269.attributes
    end

    assert_redirected_to post269_path(assigns(:post269))
  end

  test "should show post269" do
    get :show, :id => @post269.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post269.to_param
    assert_response :success
  end

  test "should update post269" do
    put :update, :id => @post269.to_param, :post269 => @post269.attributes
    assert_redirected_to post269_path(assigns(:post269))
  end

  test "should destroy post269" do
    assert_difference('Post269.count', -1) do
      delete :destroy, :id => @post269.to_param
    end

    assert_redirected_to post269s_path
  end
end
