require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get projects_path
    assert_response :success
  end

  test 'should get show' do
    get project_path(projects(:one))
    assert_response :success
  end
end
