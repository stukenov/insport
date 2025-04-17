require 'test_helper'

class ScheduleEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should create epg' do
    epg = Epg.new(
      project: projects(:one),
      episode: episodes(:one),
      start_time: Time.now,
      end_time: Time.now
    )
    assert epg.save
  end
end
