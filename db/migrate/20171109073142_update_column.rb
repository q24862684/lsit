class UpdateColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :todos, :date, :start_date
    add_column :todos, :due_date, :date
  end
end
