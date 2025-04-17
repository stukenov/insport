# frozen_string_literal: true

class Project < ApplicationRecord
  has_many :episodes, dependent: :destroy
  has_many :epgs, dependent: :destroy

  validates :title, :description, presence: true
  validates :active, inclusion: { in: [true, false] }
  validates :featured, inclusion: { in: [true, false] }
end
