class RemoveContentFromJournalEntries < ActiveRecord::Migration[5.1]
  def change
    remove_column :journal_entries, :content, :text
  end
end
