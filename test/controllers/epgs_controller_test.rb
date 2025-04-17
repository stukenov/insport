require 'test_helper'

class EpgsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get epgs_path
    assert_response :success
  end
end
