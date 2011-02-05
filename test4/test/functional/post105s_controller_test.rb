require 'test_helper'

class Post105sControllerTest < ActionController::TestCase
  setup do
    @post105 = post105s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post105s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post105" do
    assert_difference('Post105.count') do
      post :create, :post105 => @post105.attributes
    end

    assert_redirected_to post105_path(assigns(:post105))
  end

  test "should show post105" do
    get :show, :id => @post105.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post105.to_param
    assert_response :success
  end

  test "should update post105" do
    put :update, :id => @post105.to_param, :post105 => @post105.attributes
    assert_redirected_to post105_path(assigns(:post105))
  end

  test "should destroy post105" do
    assert_difference('Post105.count', -1) do
      delete :destroy, :id => @post105.to_param
    end

    assert_redirected_to post105s_path
  end
end
