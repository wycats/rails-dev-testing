require 'test_helper'

class Post79sControllerTest < ActionController::TestCase
  setup do
    @post79 = post79s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post79s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post79" do
    assert_difference('Post79.count') do
      post :create, :post79 => @post79.attributes
    end

    assert_redirected_to post79_path(assigns(:post79))
  end

  test "should show post79" do
    get :show, :id => @post79.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post79.to_param
    assert_response :success
  end

  test "should update post79" do
    put :update, :id => @post79.to_param, :post79 => @post79.attributes
    assert_redirected_to post79_path(assigns(:post79))
  end

  test "should destroy post79" do
    assert_difference('Post79.count', -1) do
      delete :destroy, :id => @post79.to_param
    end

    assert_redirected_to post79s_path
  end
end
