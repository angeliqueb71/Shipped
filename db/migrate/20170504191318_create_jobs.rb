class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :body
      t.integer :container
      t.string :location
      t.decimal :cost

      t.timestamps
    end
  end
end
