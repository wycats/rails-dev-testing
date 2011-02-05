require 'test_helper'

class Post149sControllerTest < ActionController::TestCase
  setup do
    @post149 = post149s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post149s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post149" do
    assert_difference('Post149.count') do
      post :create, :post149 => @post149.attributes
    end

    assert_redirected_to post149_path(assigns(:post149))
  end

  test "should show post149" do
    get :show, :id => @post149.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post149.to_param
    assert_response :success
  end

  test "should update post149" do
    put :update, :id => @post149.to_param, :post149 => @post149.attributes
    assert_redirected_to post149_path(assigns(:post149))
  end

  test "should destroy post149" do
    assert_difference('Post149.count', -1) do
      delete :destroy, :id => @post149.to_param
    end

    assert_redirected_to post149s_path
  end
end
