# frozen_string_literal: true

class JournalEntriesController < ProtectedController
  before_action :set_journal_entry, only: %i[show update destroy]

  def index
    @journal_entries = current_user.journal_entries.all

    render json: @journal_entries
  end

    # GET /journal_entries/1
  def show
    render json: @journal_entry
  end

  # POST /journal_entries
  def create
    # @journal_entry = JournalEntry.new(journal_entry_params)
    # @journal_entry.user_id = current_user.id

    @journal_entry = current_user.journal_entries.build(journal_entry_params)

    if @journal_entry.save
      render json: @journal_entry, status: :created, location: @journal_entry
    else
      render json: @journal_entry.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /journal_entries/1
  def update
    if @journal_entry.update(journal_entry_params)
      render json: @journal_entry
    else
      render json: @journal_entry.errors, status: :unprocessable_entity
    end
  end

  # DELETE /journal_entries/1
  def destroy
    @journal_entry.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_journal_entry
    @journal_entry = current_user.journal_entries.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through. This is for creating
  # and updating.
  def journal_entry_params
    params.require(:journal_entry).permit(:id, :content, :created_at)
  end
end
