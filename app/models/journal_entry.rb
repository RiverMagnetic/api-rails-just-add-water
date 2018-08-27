# frozen_string_literal: true

class JournalEntry < ApplicationRecord
  belongs_to :user
  validates :content, :created_at, :user, presence: true
end
