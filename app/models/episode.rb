# frozen_string_literal: true

class Episode < ApplicationRecord
  belongs_to :project
  has_many :epgs

  validates :title, :description, :duration, :video_url, presence: true
  validates :duration, numericality: { greater_than_or_equal_to: 0 }
end
