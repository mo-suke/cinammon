require 'test_helper'

class PrintLaboControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get print_labo_index_url
    assert_response :success
  end

end
