require 'test_helper'

class SendingsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get sendings_edit_url
    assert_response :success
  end

end
