# frozen_string_literal: true

class JournalEntrySerializer < ActiveModel::Serializer
  attributes :id, :created_at, :journal_entry_content
  belongs_to :user
end
