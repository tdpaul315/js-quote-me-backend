class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.string :text
      t.string :author
      t.string :year

      t.timestamps
    end
  end
end
