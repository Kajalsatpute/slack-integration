class AddIncidentReferenceToChannel < ActiveRecord::Migration[7.1]
  def change
    add_reference :channels, :incident, foreign_key: true
  end
end
