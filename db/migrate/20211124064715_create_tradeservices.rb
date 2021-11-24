class CreateTradeservices < ActiveRecord::Migration[6.0]
  def change
    create_table :tradeservices do |t|
      t.string :name
      t.string :budget
      t.string :trade
      t.text :description
      t.string :status
      t.string :location

      t.timestamps
    end
  end
end
