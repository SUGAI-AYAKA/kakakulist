require 'test_helper'

class KakakusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kakakus_index_url
    assert_response :success
  end

  test "should get show" do
    get kakakus_show_url
    assert_response :success
  end

  test "should get new" do
    get kakakus_new_url
    assert_response :success
  end

  test "should get edit" do
    get kakakus_edit_url
    assert_response :success
  end

end
