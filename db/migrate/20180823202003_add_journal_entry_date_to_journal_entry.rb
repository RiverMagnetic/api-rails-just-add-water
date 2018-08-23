class AddJournalEntryDateToJournalEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :journal_entries, :journal_entry_date, :date
  end
end
