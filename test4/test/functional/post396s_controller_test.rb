require 'test_helper'

class Post396sControllerTest < ActionController::TestCase
  setup do
    @post396 = post396s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post396s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post396" do
    assert_difference('Post396.count') do
      post :create, :post396 => @post396.attributes
    end

    assert_redirected_to post396_path(assigns(:post396))
  end

  test "should show post396" do
    get :show, :id => @post396.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post396.to_param
    assert_response :success
  end

  test "should update post396" do
    put :update, :id => @post396.to_param, :post396 => @post396.attributes
    assert_redirected_to post396_path(assigns(:post396))
  end

  test "should destroy post396" do
    assert_difference('Post396.count', -1) do
      delete :destroy, :id => @post396.to_param
    end

    assert_redirected_to post396s_path
  end
end
