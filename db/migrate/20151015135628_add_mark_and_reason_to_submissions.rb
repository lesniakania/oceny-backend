class AddMarkAndReasonToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :mark, :integer
    add_column :submissions, :reason, :string
  end
end
