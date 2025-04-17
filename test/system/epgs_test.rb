# frozen_string_literal: true

require 'application_system_test_case'

class EpgsTest < ApplicationSystemTestCase
  test 'can see the epgs page' do
    visit epgs_path

    assert_selector 'h1', text: 'EPG'
  end
end
