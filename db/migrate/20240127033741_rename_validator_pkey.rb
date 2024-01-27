class RenameValidatorPkey < ActiveRecord::Migration[7.1]
  def change
    rename_column :validators, :id, :pubkey
  end
end
