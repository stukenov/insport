# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :episodes
  has_many :epgs

  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :active, inclusion: { in: [true, false] }
  validates :featured, inclusion: { in: [true, false] }
end
