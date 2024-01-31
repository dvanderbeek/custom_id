class CreateEmailLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :email_logs do |t|
      t.string :type
      t.datetime :sent_at
      t.string :record_type
      t.bigint :record_id

      t.timestamps
    end
  end
end
