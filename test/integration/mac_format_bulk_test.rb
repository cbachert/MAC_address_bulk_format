require 'test_helper'

class MacFormatBulkTest < ActionDispatch::IntegrationTest
  
  test "MAC address format" do
    get root_path
    assert_template 'format/index'
    assert_select 'table', false

    get root_path, params: { message: "001122334455\n00:11:22:33:44:55\n00-11-22-33-44-55\n0011.2233.4455\nAABBCCDDEEFG" }
    assert_template 'format/index'
    assert_select 'table', count: 1 do
      assert_select 'tr', 6
      assert_select 'tr.warning', 1
    end
    
    assert_template 'format/index'
  end
end
