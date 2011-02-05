require 'test_helper'

class Post343sControllerTest < ActionController::TestCase
  setup do
    @post343 = post343s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post343s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post343" do
    assert_difference('Post343.count') do
      post :create, :post343 => @post343.attributes
    end

    assert_redirected_to post343_path(assigns(:post343))
  end

  test "should show post343" do
    get :show, :id => @post343.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post343.to_param
    assert_response :success
  end

  test "should update post343" do
    put :update, :id => @post343.to_param, :post343 => @post343.attributes
    assert_redirected_to post343_path(assigns(:post343))
  end

  test "should destroy post343" do
    assert_difference('Post343.count', -1) do
      delete :destroy, :id => @post343.to_param
    end

    assert_redirected_to post343s_path
  end
end
