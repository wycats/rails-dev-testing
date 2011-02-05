require 'test_helper'

class Post370sControllerTest < ActionController::TestCase
  setup do
    @post370 = post370s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post370s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post370" do
    assert_difference('Post370.count') do
      post :create, :post370 => @post370.attributes
    end

    assert_redirected_to post370_path(assigns(:post370))
  end

  test "should show post370" do
    get :show, :id => @post370.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post370.to_param
    assert_response :success
  end

  test "should update post370" do
    put :update, :id => @post370.to_param, :post370 => @post370.attributes
    assert_redirected_to post370_path(assigns(:post370))
  end

  test "should destroy post370" do
    assert_difference('Post370.count', -1) do
      delete :destroy, :id => @post370.to_param
    end

    assert_redirected_to post370s_path
  end
end
