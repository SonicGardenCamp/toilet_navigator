require "test_helper"

class ToiletPlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get toilet_places_new_url
    assert_response :success
  end

  test "should get edit" do
    get toilet_places_edit_url
    assert_response :success
  end
end
