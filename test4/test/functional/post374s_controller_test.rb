require 'test_helper'

class Post374sControllerTest < ActionController::TestCase
  setup do
    @post374 = post374s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post374s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post374" do
    assert_difference('Post374.count') do
      post :create, :post374 => @post374.attributes
    end

    assert_redirected_to post374_path(assigns(:post374))
  end

  test "should show post374" do
    get :show, :id => @post374.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post374.to_param
    assert_response :success
  end

  test "should update post374" do
    put :update, :id => @post374.to_param, :post374 => @post374.attributes
    assert_redirected_to post374_path(assigns(:post374))
  end

  test "should destroy post374" do
    assert_difference('Post374.count', -1) do
      delete :destroy, :id => @post374.to_param
    end

    assert_redirected_to post374s_path
  end
end
