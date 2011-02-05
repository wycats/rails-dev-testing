require 'test_helper'

class Post119sControllerTest < ActionController::TestCase
  setup do
    @post119 = post119s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post119s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post119" do
    assert_difference('Post119.count') do
      post :create, :post119 => @post119.attributes
    end

    assert_redirected_to post119_path(assigns(:post119))
  end

  test "should show post119" do
    get :show, :id => @post119.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post119.to_param
    assert_response :success
  end

  test "should update post119" do
    put :update, :id => @post119.to_param, :post119 => @post119.attributes
    assert_redirected_to post119_path(assigns(:post119))
  end

  test "should destroy post119" do
    assert_difference('Post119.count', -1) do
      delete :destroy, :id => @post119.to_param
    end

    assert_redirected_to post119s_path
  end
end
