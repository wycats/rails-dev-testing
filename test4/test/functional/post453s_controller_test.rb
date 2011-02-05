require 'test_helper'

class Post453sControllerTest < ActionController::TestCase
  setup do
    @post453 = post453s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post453s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post453" do
    assert_difference('Post453.count') do
      post :create, :post453 => @post453.attributes
    end

    assert_redirected_to post453_path(assigns(:post453))
  end

  test "should show post453" do
    get :show, :id => @post453.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post453.to_param
    assert_response :success
  end

  test "should update post453" do
    put :update, :id => @post453.to_param, :post453 => @post453.attributes
    assert_redirected_to post453_path(assigns(:post453))
  end

  test "should destroy post453" do
    assert_difference('Post453.count', -1) do
      delete :destroy, :id => @post453.to_param
    end

    assert_redirected_to post453s_path
  end
end
