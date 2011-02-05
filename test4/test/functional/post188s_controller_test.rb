require 'test_helper'

class Post188sControllerTest < ActionController::TestCase
  setup do
    @post188 = post188s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post188s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post188" do
    assert_difference('Post188.count') do
      post :create, :post188 => @post188.attributes
    end

    assert_redirected_to post188_path(assigns(:post188))
  end

  test "should show post188" do
    get :show, :id => @post188.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post188.to_param
    assert_response :success
  end

  test "should update post188" do
    put :update, :id => @post188.to_param, :post188 => @post188.attributes
    assert_redirected_to post188_path(assigns(:post188))
  end

  test "should destroy post188" do
    assert_difference('Post188.count', -1) do
      delete :destroy, :id => @post188.to_param
    end

    assert_redirected_to post188s_path
  end
end
