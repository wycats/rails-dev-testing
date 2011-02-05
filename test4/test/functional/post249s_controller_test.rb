require 'test_helper'

class Post249sControllerTest < ActionController::TestCase
  setup do
    @post249 = post249s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post249s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post249" do
    assert_difference('Post249.count') do
      post :create, :post249 => @post249.attributes
    end

    assert_redirected_to post249_path(assigns(:post249))
  end

  test "should show post249" do
    get :show, :id => @post249.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post249.to_param
    assert_response :success
  end

  test "should update post249" do
    put :update, :id => @post249.to_param, :post249 => @post249.attributes
    assert_redirected_to post249_path(assigns(:post249))
  end

  test "should destroy post249" do
    assert_difference('Post249.count', -1) do
      delete :destroy, :id => @post249.to_param
    end

    assert_redirected_to post249s_path
  end
end
