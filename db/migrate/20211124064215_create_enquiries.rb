class CreateEnquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :enquiries do |t|
      t.text :tasks
      t.string :date
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
