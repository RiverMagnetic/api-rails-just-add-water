class RemoveJournalEntryDateFromJournalEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :journal_entries, :journal_entry_date, :date
  end
end
