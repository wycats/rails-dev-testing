require 'test_helper'

class Post35sControllerTest < ActionController::TestCase
  setup do
    @post35 = post35s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post35s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post35" do
    assert_difference('Post35.count') do
      post :create, :post35 => @post35.attributes
    end

    assert_redirected_to post35_path(assigns(:post35))
  end

  test "should show post35" do
    get :show, :id => @post35.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post35.to_param
    assert_response :success
  end

  test "should update post35" do
    put :update, :id => @post35.to_param, :post35 => @post35.attributes
    assert_redirected_to post35_path(assigns(:post35))
  end

  test "should destroy post35" do
    assert_difference('Post35.count', -1) do
      delete :destroy, :id => @post35.to_param
    end

    assert_redirected_to post35s_path
  end
end
