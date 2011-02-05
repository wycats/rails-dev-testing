require 'test_helper'

class Post314sControllerTest < ActionController::TestCase
  setup do
    @post314 = post314s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post314s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post314" do
    assert_difference('Post314.count') do
      post :create, :post314 => @post314.attributes
    end

    assert_redirected_to post314_path(assigns(:post314))
  end

  test "should show post314" do
    get :show, :id => @post314.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post314.to_param
    assert_response :success
  end

  test "should update post314" do
    put :update, :id => @post314.to_param, :post314 => @post314.attributes
    assert_redirected_to post314_path(assigns(:post314))
  end

  test "should destroy post314" do
    assert_difference('Post314.count', -1) do
      delete :destroy, :id => @post314.to_param
    end

    assert_redirected_to post314s_path
  end
end
