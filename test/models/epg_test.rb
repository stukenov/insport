# frozen_string_literal: true

require 'test_helper'

class ScheduleEntryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should create epg' do
    epg = Epg.new(
      project: projects(:one),
      episode: episodes(:one),
      start_time: Time.zone.now,
      end_time: Time.zone.now
    )
    assert epg.save
  end
end
