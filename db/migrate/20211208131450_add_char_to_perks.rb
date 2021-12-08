class AddCharToPerks < ActiveRecord::Migration[6.1]
  def change
    add_reference :perks, :char, foreign_key: true
  end
end
