class RemoveJournalEntryTimeFromJournalEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :journal_entries, :journal_entry_time, :time
  end
end
