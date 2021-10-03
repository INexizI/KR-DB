class AddDescription2ToGears < ActiveRecord::Migration[6.1]
  def change
    add_column :gears, :description_2, :string
  end
end
