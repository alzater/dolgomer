class CreateDebtors < ActiveRecord::Migration
  def change
    create_table :debtors do |t|
      t.belongs_to :user, index: true
      t.string :firstname
      t.string :lastname
      t.integer :debt
      t.references :user, index: true

      t.timestamps
    end
  end
end
