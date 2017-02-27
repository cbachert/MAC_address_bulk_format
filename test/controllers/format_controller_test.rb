require 'test_helper'

class FormatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get format_index_url
    assert_response :success
  end

end
