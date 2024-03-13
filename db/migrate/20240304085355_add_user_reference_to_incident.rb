class AddUserReferenceToIncident < ActiveRecord::Migration[7.1]
  def change
    add_reference :incidents, :reporter, null: false, foreign_key: { to_table: :users }
    add_reference :incidents, :resolver, null: false, foreign_key: { to_table: :users }
  end
end
