class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :first_name
      t.string :last_name
      t.integer :rate

      t.timestamps null: false
    end
  end
end

