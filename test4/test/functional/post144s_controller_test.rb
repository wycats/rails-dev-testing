require 'test_helper'

class Post144sControllerTest < ActionController::TestCase
  setup do
    @post144 = post144s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post144s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post144" do
    assert_difference('Post144.count') do
      post :create, :post144 => @post144.attributes
    end

    assert_redirected_to post144_path(assigns(:post144))
  end

  test "should show post144" do
    get :show, :id => @post144.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post144.to_param
    assert_response :success
  end

  test "should update post144" do
    put :update, :id => @post144.to_param, :post144 => @post144.attributes
    assert_redirected_to post144_path(assigns(:post144))
  end

  test "should destroy post144" do
    assert_difference('Post144.count', -1) do
      delete :destroy, :id => @post144.to_param
    end

    assert_redirected_to post144s_path
  end
end
