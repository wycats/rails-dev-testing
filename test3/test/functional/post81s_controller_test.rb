require 'test_helper'

class Post81sControllerTest < ActionController::TestCase
  setup do
    @post81 = post81s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post81s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post81" do
    assert_difference('Post81.count') do
      post :create, :post81 => @post81.attributes
    end

    assert_redirected_to post81_path(assigns(:post81))
  end

  test "should show post81" do
    get :show, :id => @post81.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post81.to_param
    assert_response :success
  end

  test "should update post81" do
    put :update, :id => @post81.to_param, :post81 => @post81.attributes
    assert_redirected_to post81_path(assigns(:post81))
  end

  test "should destroy post81" do
    assert_difference('Post81.count', -1) do
      delete :destroy, :id => @post81.to_param
    end

    assert_redirected_to post81s_path
  end
end
