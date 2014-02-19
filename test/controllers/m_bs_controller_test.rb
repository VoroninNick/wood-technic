require 'test_helper'

class MBsControllerTest < ActionController::TestCase
  setup do
    @m_b = m_bs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:m_bs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create m_b" do
    assert_difference('MB.count') do
      post :create, m_b: {  }
    end

    assert_redirected_to m_b_path(assigns(:m_b))
  end

  test "should show m_b" do
    get :show, id: @m_b
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @m_b
    assert_response :success
  end

  test "should update m_b" do
    patch :update, id: @m_b, m_b: {  }
    assert_redirected_to m_b_path(assigns(:m_b))
  end

  test "should destroy m_b" do
    assert_difference('MB.count', -1) do
      delete :destroy, id: @m_b
    end

    assert_redirected_to m_bs_path
  end
end
