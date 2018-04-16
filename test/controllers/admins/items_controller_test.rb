require 'test_helper'

class Admins::ItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admins_items_show_url
    assert_response :success
  end

  test "should get new" do
    get admins_items_new_url
    assert_response :success
  end

end
