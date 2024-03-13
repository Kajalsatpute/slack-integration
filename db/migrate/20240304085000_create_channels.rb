class CreateChannels < ActiveRecord::Migration[7.1]
  def change
    create_table :channels do |t|
      t.string :slack_id
      t.string :name
      t.string :team_id

      t.timestamps
    end
  end
end
