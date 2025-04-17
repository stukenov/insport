# frozen_string_literal: true

class Epg < ApplicationRecord
  belongs_to :project
  belongs_to :episode

  validates :start_time, :end_time, presence: true
  validates :project_id, :episode_id, presence: true
end
