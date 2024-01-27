class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.string :txn_hash
      t.belongs_to :validator, null: false, foreign_key: true, type: :string

      t.timestamps
    end
  end
end
