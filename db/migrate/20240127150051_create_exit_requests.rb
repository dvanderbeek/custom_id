class CreateExitRequests < ActiveRecord::Migration[7.1]
  def change
    create_table :exit_requests do |t|
      t.string :status

      t.timestamps
    end
  end
end
