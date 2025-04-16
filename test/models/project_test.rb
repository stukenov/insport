require "test_helper"

class ShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should create project" do
    project = Project.new(
      title: "Test Project", 
      description: "This is a test project", 
      active: true, 
      featured: false)
    assert project.save
  end
end
