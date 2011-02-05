require 'test_helper'

class Post111sControllerTest < ActionController::TestCase
  setup do
    @post111 = post111s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post111s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post111" do
    assert_difference('Post111.count') do
      post :create, :post111 => @post111.attributes
    end

    assert_redirected_to post111_path(assigns(:post111))
  end

  test "should show post111" do
    get :show, :id => @post111.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post111.to_param
    assert_response :success
  end

  test "should update post111" do
    put :update, :id => @post111.to_param, :post111 => @post111.attributes
    assert_redirected_to post111_path(assigns(:post111))
  end

  test "should destroy post111" do
    assert_difference('Post111.count', -1) do
      delete :destroy, :id => @post111.to_param
    end

    assert_redirected_to post111s_path
  end
end
