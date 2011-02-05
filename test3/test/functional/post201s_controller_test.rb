require 'test_helper'

class Post201sControllerTest < ActionController::TestCase
  setup do
    @post201 = post201s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post201s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post201" do
    assert_difference('Post201.count') do
      post :create, :post201 => @post201.attributes
    end

    assert_redirected_to post201_path(assigns(:post201))
  end

  test "should show post201" do
    get :show, :id => @post201.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post201.to_param
    assert_response :success
  end

  test "should update post201" do
    put :update, :id => @post201.to_param, :post201 => @post201.attributes
    assert_redirected_to post201_path(assigns(:post201))
  end

  test "should destroy post201" do
    assert_difference('Post201.count', -1) do
      delete :destroy, :id => @post201.to_param
    end

    assert_redirected_to post201s_path
  end
end
