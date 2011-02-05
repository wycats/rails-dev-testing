require 'test_helper'

class Post232sControllerTest < ActionController::TestCase
  setup do
    @post232 = post232s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post232s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post232" do
    assert_difference('Post232.count') do
      post :create, :post232 => @post232.attributes
    end

    assert_redirected_to post232_path(assigns(:post232))
  end

  test "should show post232" do
    get :show, :id => @post232.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post232.to_param
    assert_response :success
  end

  test "should update post232" do
    put :update, :id => @post232.to_param, :post232 => @post232.attributes
    assert_redirected_to post232_path(assigns(:post232))
  end

  test "should destroy post232" do
    assert_difference('Post232.count', -1) do
      delete :destroy, :id => @post232.to_param
    end

    assert_redirected_to post232s_path
  end
end
