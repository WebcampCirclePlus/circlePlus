require 'test_helper'

class Admins::DiscsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admins_discs_show_url
    assert_response :success
  end

end
