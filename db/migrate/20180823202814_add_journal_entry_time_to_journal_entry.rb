class AddJournalEntryTimeToJournalEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :journal_entries, :journal_entry_time, :time
  end
end
