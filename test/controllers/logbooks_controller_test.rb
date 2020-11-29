require 'test_helper'

class LogbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get logbooks_index_url
    assert_response :success
  end

  test "should get new" do
    get logbooks_new_url
    assert_response :success
  end

end
