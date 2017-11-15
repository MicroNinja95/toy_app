require 'test_helper'

class UpdatedUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @updated_user = updated_users(:one)
  end

  test "should get index" do
    get updated_users_url
    assert_response :success
  end

  test "should get new" do
    get new_updated_user_url
    assert_response :success
  end

  test "should create updated_user" do
    assert_difference('UpdatedUser.count') do
      post updated_users_url, params: { updated_user: { user_email: @updated_user.user_email, user_name: @updated_user.user_name } }
    end

    assert_redirected_to updated_user_url(UpdatedUser.last)
  end

  test "should show updated_user" do
    get updated_user_url(@updated_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_updated_user_url(@updated_user)
    assert_response :success
  end

  test "should update updated_user" do
    patch updated_user_url(@updated_user), params: { updated_user: { user_email: @updated_user.user_email, user_name: @updated_user.user_name } }
    assert_redirected_to updated_user_url(@updated_user)
  end

  test "should destroy updated_user" do
    assert_difference('UpdatedUser.count', -1) do
      delete updated_user_url(@updated_user)
    end

    assert_redirected_to updated_users_url
  end
end
