class AddUserReferenceToJournalEntry < ActiveRecord::Migration[5.1]
  def change
    add_reference :journal_entries, :user, foreign_key: true
  end
end
