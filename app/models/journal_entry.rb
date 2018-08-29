# frozen_string_literal: true

class JournalEntry < ApplicationRecord
  belongs_to :user
  validates :journal_entry_content, :user, presence: true
end
