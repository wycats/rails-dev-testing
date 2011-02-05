require 'test_helper'

class Post362sControllerTest < ActionController::TestCase
  setup do
    @post362 = post362s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post362s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post362" do
    assert_difference('Post362.count') do
      post :create, :post362 => @post362.attributes
    end

    assert_redirected_to post362_path(assigns(:post362))
  end

  test "should show post362" do
    get :show, :id => @post362.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post362.to_param
    assert_response :success
  end

  test "should update post362" do
    put :update, :id => @post362.to_param, :post362 => @post362.attributes
    assert_redirected_to post362_path(assigns(:post362))
  end

  test "should destroy post362" do
    assert_difference('Post362.count', -1) do
      delete :destroy, :id => @post362.to_param
    end

    assert_redirected_to post362s_path
  end
end
