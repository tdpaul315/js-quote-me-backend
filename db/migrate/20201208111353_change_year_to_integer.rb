class ChangeYearToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :quotes, :year, :integer
  end
end
