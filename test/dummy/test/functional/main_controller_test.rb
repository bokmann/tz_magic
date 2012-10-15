require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should redirect to the time_zone/new if no cookie" do
    get :index
    assert_redirected_to "/tz_magic/time_zone/new"
  end

  test "should not redirect if the name is in the session" do
    get :index, {}, {:timezone =>"America/New_York"}
    assert :success
  end

  test "should display the name of the timezone in the test page" do
    get :index, {}, {:timezone =>"America/New_York"}
    assert :success
    assert_select 'p', 'Time zone is: America/New_York'
  end

end
