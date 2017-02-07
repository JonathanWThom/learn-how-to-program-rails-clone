class AddWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.column :name, :string
      t.column :course_id, :integer

      t.timestamps
    end

    create_table :courses do |t|
      t.column :name, :string

      t.timestamps
    end

    add_column :lessons, :week_id, :integer
    add_column :lessons, :day_of_week, :string
  end
end
