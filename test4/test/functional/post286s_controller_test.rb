require 'test_helper'

class Post286sControllerTest < ActionController::TestCase
  setup do
    @post286 = post286s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post286s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post286" do
    assert_difference('Post286.count') do
      post :create, :post286 => @post286.attributes
    end

    assert_redirected_to post286_path(assigns(:post286))
  end

  test "should show post286" do
    get :show, :id => @post286.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post286.to_param
    assert_response :success
  end

  test "should update post286" do
    put :update, :id => @post286.to_param, :post286 => @post286.attributes
    assert_redirected_to post286_path(assigns(:post286))
  end

  test "should destroy post286" do
    assert_difference('Post286.count', -1) do
      delete :destroy, :id => @post286.to_param
    end

    assert_redirected_to post286s_path
  end
end
