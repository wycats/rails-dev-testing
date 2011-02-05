require 'test_helper'

class Post222sControllerTest < ActionController::TestCase
  setup do
    @post222 = post222s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post222s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post222" do
    assert_difference('Post222.count') do
      post :create, :post222 => @post222.attributes
    end

    assert_redirected_to post222_path(assigns(:post222))
  end

  test "should show post222" do
    get :show, :id => @post222.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post222.to_param
    assert_response :success
  end

  test "should update post222" do
    put :update, :id => @post222.to_param, :post222 => @post222.attributes
    assert_redirected_to post222_path(assigns(:post222))
  end

  test "should destroy post222" do
    assert_difference('Post222.count', -1) do
      delete :destroy, :id => @post222.to_param
    end

    assert_redirected_to post222s_path
  end
end
