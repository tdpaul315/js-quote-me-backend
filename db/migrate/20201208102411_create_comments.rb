class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.string :content
      t.belongs_to :quote_id

      t.timestamps
    end
  end
end
