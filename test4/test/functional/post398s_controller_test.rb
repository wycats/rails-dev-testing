require 'test_helper'

class Post398sControllerTest < ActionController::TestCase
  setup do
    @post398 = post398s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post398s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post398" do
    assert_difference('Post398.count') do
      post :create, :post398 => @post398.attributes
    end

    assert_redirected_to post398_path(assigns(:post398))
  end

  test "should show post398" do
    get :show, :id => @post398.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post398.to_param
    assert_response :success
  end

  test "should update post398" do
    put :update, :id => @post398.to_param, :post398 => @post398.attributes
    assert_redirected_to post398_path(assigns(:post398))
  end

  test "should destroy post398" do
    assert_difference('Post398.count', -1) do
      delete :destroy, :id => @post398.to_param
    end

    assert_redirected_to post398s_path
  end
end
