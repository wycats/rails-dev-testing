require 'test_helper'

class Post354sControllerTest < ActionController::TestCase
  setup do
    @post354 = post354s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post354s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post354" do
    assert_difference('Post354.count') do
      post :create, :post354 => @post354.attributes
    end

    assert_redirected_to post354_path(assigns(:post354))
  end

  test "should show post354" do
    get :show, :id => @post354.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post354.to_param
    assert_response :success
  end

  test "should update post354" do
    put :update, :id => @post354.to_param, :post354 => @post354.attributes
    assert_redirected_to post354_path(assigns(:post354))
  end

  test "should destroy post354" do
    assert_difference('Post354.count', -1) do
      delete :destroy, :id => @post354.to_param
    end

    assert_redirected_to post354s_path
  end
end
