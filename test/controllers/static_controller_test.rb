require "test_helper"

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get static_about_url
    assert_response :success
  end

  test "should get policy" do
    get static_policy_url
    assert_response :success
  end

  test "should get terms" do
    get static_terms_url
    assert_response :success
  end
end
