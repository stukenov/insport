require "application_system_test_case"

class EpisodesTest < ApplicationSystemTestCase
  test "can see the archive page" do
    visit archive_path
  
    assert_selector "h1", text: "Archive"
  end
end
