require 'test_helper'

class SkillsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get skills_show_url
    assert_response :success
  end

end
