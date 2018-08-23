class JournalEntriesController < ProtectedController

    def index
        @journal_entries = current_user.journal_entries.all

        render json: @journal_entries
    end
    
end
