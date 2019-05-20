class SetListNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :lists, :name, false
  end
end
