class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :teams, :members, :num_members
  end
end
