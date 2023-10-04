class DeleleColumnDayToTask < ActiveRecord::Migration[7.0]
  def change
    remove_column :tasks, :day_id
  end
end
