class AddContentToJournalEntry < ActiveRecord::Migration[5.1]
  def change
    add_column :journal_entries, :content, :text
  end
end
