require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about page" do
    get about_path
    assert_response :success
  end
end
