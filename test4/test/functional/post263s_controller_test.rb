require 'test_helper'

class Post263sControllerTest < ActionController::TestCase
  setup do
    @post263 = post263s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post263s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post263" do
    assert_difference('Post263.count') do
      post :create, :post263 => @post263.attributes
    end

    assert_redirected_to post263_path(assigns(:post263))
  end

  test "should show post263" do
    get :show, :id => @post263.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post263.to_param
    assert_response :success
  end

  test "should update post263" do
    put :update, :id => @post263.to_param, :post263 => @post263.attributes
    assert_redirected_to post263_path(assigns(:post263))
  end

  test "should destroy post263" do
    assert_difference('Post263.count', -1) do
      delete :destroy, :id => @post263.to_param
    end

    assert_redirected_to post263s_path
  end
end
