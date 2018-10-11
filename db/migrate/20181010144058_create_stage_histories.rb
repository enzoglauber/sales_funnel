class CreateStageHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :stage_histories do |t|
      t.references :stage, foreign_key: true
      t.references :opportunity, foreign_key: true

      t.timestamps
    end
  end
end
