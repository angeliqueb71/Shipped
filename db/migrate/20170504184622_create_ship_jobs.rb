class CreateShipJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :ship_jobs do |t|
      t.integer :ship_id
      t.integer :job_id

      t.timestamps
    end
  end
end
