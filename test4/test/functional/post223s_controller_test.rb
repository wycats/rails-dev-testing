require 'test_helper'

class Post223sControllerTest < ActionController::TestCase
  setup do
    @post223 = post223s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:post223s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post223" do
    assert_difference('Post223.count') do
      post :create, :post223 => @post223.attributes
    end

    assert_redirected_to post223_path(assigns(:post223))
  end

  test "should show post223" do
    get :show, :id => @post223.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @post223.to_param
    assert_response :success
  end

  test "should update post223" do
    put :update, :id => @post223.to_param, :post223 => @post223.attributes
    assert_redirected_to post223_path(assigns(:post223))
  end

  test "should destroy post223" do
    assert_difference('Post223.count', -1) do
      delete :destroy, :id => @post223.to_param
    end

    assert_redirected_to post223s_path
  end
end
