require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get impressum" do
    get impressum_path
    assert_response :success
  end

  test "should check variables used in impressum" do
    assert_not_nil(ENV["IMPRESSUM_NAME"])
    assert_not_empty(ENV["IMPRESSUM_NAME"])

    assert_not_nil(ENV["IMPRESSUM_ADDRESS"])
    assert_not_empty(ENV["IMPRESSUM_ADDRESS"])

    assert_not_nil(ENV["IMPRESSUM_PHONE"])
    assert_not_empty(ENV["IMPRESSUM_PHONE"])

    # Fax is optional
    # assert_not_nil(ENV["IMPRESSUM_FAX"])
    # assert_not_empty(ENV["IMPRESSUM_FAX"])

    assert_not_nil(ENV["IMPRESSUM_EMAIL"])
    assert_not_empty(ENV["IMPRESSUM_EMAIL"])
  end

  test "should get datenschutz" do
    get datenschutz_path
    assert_response :success
  end

end
