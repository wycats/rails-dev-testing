require 'test_helper'

class Post37sControllerTest < ActionController::TestCase
  setup do
    @post37 = post37s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post37s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post37" do
    assert_difference('Post37.count') do
      post :create, :post37 => @post37.attributes
    end

    assert_redirected_to post37_path(assigns(:post37))
  end

  test "should show post37" do
    get :show, :id => @post37.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post37.to_param
    assert_response :success
  end

  test "should update post37" do
    put :update, :id => @post37.to_param, :post37 => @post37.attributes
    assert_redirected_to post37_path(assigns(:post37))
  end

  test "should destroy post37" do
    assert_difference('Post37.count', -1) do
      delete :destroy, :id => @post37.to_param
    end

    assert_redirected_to post37s_path
  end
end
