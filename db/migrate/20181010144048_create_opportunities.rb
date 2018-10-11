class CreateOpportunities < ActiveRecord::Migration[5.2]
  def change
    create_table :opportunities do |t|
      t.string :title
      t.decimal :value, precision: 8, scale: 2
      t.string :customer
      t.references :stage, foreign_key: true

      t.timestamps
    end
  end
end
