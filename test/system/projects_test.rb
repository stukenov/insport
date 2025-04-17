# frozen_string_literal: true

require 'application_system_test_case'

class ProjectsTest < ApplicationSystemTestCase
  test 'can see the projects page' do
    visit projects_path

    assert_selector 'h1', text: 'Projects'
  end
end
