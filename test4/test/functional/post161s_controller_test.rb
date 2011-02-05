require 'test_helper'

class Post161sControllerTest < ActionController::TestCase
  setup do
    @post161 = post161s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post161s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post161" do
    assert_difference('Post161.count') do
      post :create, :post161 => @post161.attributes
    end

    assert_redirected_to post161_path(assigns(:post161))
  end

  test "should show post161" do
    get :show, :id => @post161.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post161.to_param
    assert_response :success
  end

  test "should update post161" do
    put :update, :id => @post161.to_param, :post161 => @post161.attributes
    assert_redirected_to post161_path(assigns(:post161))
  end

  test "should destroy post161" do
    assert_difference('Post161.count', -1) do
      delete :destroy, :id => @post161.to_param
    end

    assert_redirected_to post161s_path
  end
end
