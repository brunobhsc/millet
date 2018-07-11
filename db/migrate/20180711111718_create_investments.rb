class CreateInvestments < ActiveRecord::Migration[5.1]
  def change
    create_table :investments do |t|
      t.text :description
      t.references :broker, foreign_key: true
      t.datetime :applied_at
      t.integer :duration
      t.datetime :rescue_at
      t.decimal :invested_amount
      t.decimal :estimated_rescue

      t.timestamps
    end
  end
end
