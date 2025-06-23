class CreateSystemLogs < ActiveRecord::Migration[7.2]
  def change
    create_table :system_logs do |t|
      t.string :system_name
      t.string :log_level
      t.text :log_message
      t.datetime :log_time

      t.timestamps
    end
  end
end
