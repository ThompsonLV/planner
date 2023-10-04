class AddColumnBeginDateToTask < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :begin_date, :datetime
  end
end
