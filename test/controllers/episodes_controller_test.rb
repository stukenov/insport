require "test_helper"

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get archive_path
    assert_response :success
  end

  test "should get show" do
    get episode_path(episodes(:one))
    assert_response :success
  end

  test "should get show_for_project" do
    get project_episodes_path(projects(:one))
    assert_response :success
  end
  
end
