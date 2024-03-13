class AddAppsReferenceToIncident < ActiveRecord::Migration[7.1]
  def change
    add_reference :incidents, :app
  end
end
