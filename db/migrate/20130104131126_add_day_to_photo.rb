class AddDayToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :day, :date
    add_column :photos, :eat, :integer
  end
end
