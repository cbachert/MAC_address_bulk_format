require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'format/index'
    assert_select "a[href=?]", root_path
    assert_select "a[href=?]", impressum_path
    assert_select "a[href=?]", datenschutz_path
    assert_select "a[href=?]", 'https://github.com/cbachert/MAC_address_bulk_format'
  end
end
