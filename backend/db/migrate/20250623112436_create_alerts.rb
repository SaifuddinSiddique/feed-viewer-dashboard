class CreateAlerts < ActiveRecord::Migration[7.2]
  def change
    create_table :alerts do |t|
      t.string :alert_type
      t.text :message
      t.string :severity

      t.timestamps
    end
  end
end
