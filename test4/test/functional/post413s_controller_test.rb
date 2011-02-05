require 'test_helper'

class Post413sControllerTest < ActionController::TestCase
  setup do
    @post413 = post413s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post413s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post413" do
    assert_difference('Post413.count') do
      post :create, :post413 => @post413.attributes
    end

    assert_redirected_to post413_path(assigns(:post413))
  end

  test "should show post413" do
    get :show, :id => @post413.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post413.to_param
    assert_response :success
  end

  test "should update post413" do
    put :update, :id => @post413.to_param, :post413 => @post413.attributes
    assert_redirected_to post413_path(assigns(:post413))
  end

  test "should destroy post413" do
    assert_difference('Post413.count', -1) do
      delete :destroy, :id => @post413.to_param
    end

    assert_redirected_to post413s_path
  end
end
