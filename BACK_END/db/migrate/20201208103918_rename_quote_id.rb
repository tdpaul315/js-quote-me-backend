class RenameQuoteId < ActiveRecord::Migration[6.0]
  def change
    rename_column :comments, :quote_id_id, :quote_id
  end
end
