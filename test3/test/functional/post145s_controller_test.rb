require 'test_helper'

class Post145sControllerTest < ActionController::TestCase
  setup do
    @post145 = post145s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post145s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post145" do
    assert_difference('Post145.count') do
      post :create, :post145 => @post145.attributes
    end

    assert_redirected_to post145_path(assigns(:post145))
  end

  test "should show post145" do
    get :show, :id => @post145.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post145.to_param
    assert_response :success
  end

  test "should update post145" do
    put :update, :id => @post145.to_param, :post145 => @post145.attributes
    assert_redirected_to post145_path(assigns(:post145))
  end

  test "should destroy post145" do
    assert_difference('Post145.count', -1) do
      delete :destroy, :id => @post145.to_param
    end

    assert_redirected_to post145s_path
  end
end
