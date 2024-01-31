class AddExitRequestIdToValidators < ActiveRecord::Migration[7.1]
  def change
    add_reference :validators, :exit_request, null: true, foreign_key: true
    add_column :validators, :status, :string
  end
end
