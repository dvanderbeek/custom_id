class CreateValidators < ActiveRecord::Migration[7.1]
  def change
    create_table :validators, id: :string do |t|

      t.timestamps
    end
  end
end
