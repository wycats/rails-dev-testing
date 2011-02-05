require 'test_helper'

class Post388sControllerTest < ActionController::TestCase
  setup do
    @post388 = post388s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post388s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post388" do
    assert_difference('Post388.count') do
      post :create, :post388 => @post388.attributes
    end

    assert_redirected_to post388_path(assigns(:post388))
  end

  test "should show post388" do
    get :show, :id => @post388.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post388.to_param
    assert_response :success
  end

  test "should update post388" do
    put :update, :id => @post388.to_param, :post388 => @post388.attributes
    assert_redirected_to post388_path(assigns(:post388))
  end

  test "should destroy post388" do
    assert_difference('Post388.count', -1) do
      delete :destroy, :id => @post388.to_param
    end

    assert_redirected_to post388s_path
  end
end
