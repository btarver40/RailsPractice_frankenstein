require 'test_helper'

class IcecreamsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get icecreams_index_url
    assert_response :success
  end

  test "should get show" do
    get icecreams_show_url
    assert_response :success
  end

  test "should get new" do
    get icecreams_new_url
    assert_response :success
  end

end
