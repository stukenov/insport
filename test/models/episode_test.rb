require 'test_helper'

class EpisodeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should create episode' do
    episode = Episode.new(
      project: projects(:one),
      title: 'Test Episode',
      description: 'This is a test episode',
      duration: 10,
      video_url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
    )
    assert episode.save
  end
end
