class AddDefaultValueToCompletedInTodos < ActiveRecord::Migration[7.0]
  def change
    change_column_default :todos, :completed, false
  end
end
