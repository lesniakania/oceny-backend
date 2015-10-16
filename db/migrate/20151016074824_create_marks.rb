class CreateMarks < ActiveRecord::Migration
  def up
    create_table :marks do |t|
      t.integer :value
      t.integer :submission_id

      t.timestamps null: false
    end

    add_index :marks, :submission_id
    add_foreign_key :marks, :submissions

    remove_column :submissions, :mark
  end

  def down
    drop_table :marks
    add_column :submissions, :mark, :integer
  end
end
