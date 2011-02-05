require 'test_helper'

class Post495sControllerTest < ActionController::TestCase
  setup do
    @post495 = post495s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post495s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post495" do
    assert_difference('Post495.count') do
      post :create, :post495 => @post495.attributes
    end

    assert_redirected_to post495_path(assigns(:post495))
  end

  test "should show post495" do
    get :show, :id => @post495.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post495.to_param
    assert_response :success
  end

  test "should update post495" do
    put :update, :id => @post495.to_param, :post495 => @post495.attributes
    assert_redirected_to post495_path(assigns(:post495))
  end

  test "should destroy post495" do
    assert_difference('Post495.count', -1) do
      delete :destroy, :id => @post495.to_param
    end

    assert_redirected_to post495s_path
  end
end
