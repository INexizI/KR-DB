class AddNoticeToGears < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :explanation, :string
    add_column :gears, :notice, :string
  end
end
