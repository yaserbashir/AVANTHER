require 'test_helper'

class StartseitenControllerTest < ActionDispatch::IntegrationTest
  test "should get das-wirtshaus" do
    get startseiten_das-wirtshaus_url
    assert_response :success
  end

  test "should get speisen-a-getränke" do
    get startseiten_speisen-a-getränke_url
    assert_response :success
  end

  test "should get anfahrt" do
    get startseiten_anfahrt_url
    assert_response :success
  end

  test "should get reservierung" do
    get startseiten_reservierung_url
    assert_response :success
  end

end
