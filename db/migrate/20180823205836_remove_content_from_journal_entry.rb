class RemoveContentFromJournalEntry < ActiveRecord::Migration[5.1]
  def change
    remove_column :journal_entries, :content, :string
  end
end
