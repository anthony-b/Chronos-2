class CreateTaskActivities < ActiveRecord::Migration
  def change
    create_table :task_activities do |t|
      t.string :time_taken
      t.string :notes

      t.timestamps
    end
  end
end
