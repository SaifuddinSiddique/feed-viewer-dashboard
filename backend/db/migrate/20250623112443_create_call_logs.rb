class CreateCallLogs < ActiveRecord::Migration[7.2]
  def change
    create_table :call_logs do |t|
      t.string :phone_number
      t.integer :duration
      t.string :call_type
      t.datetime :called_at

      t.timestamps
    end
  end
end
