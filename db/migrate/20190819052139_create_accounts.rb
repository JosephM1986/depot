# frozen_string_literal: true

class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts, force: true do |t|
      t.string :number
      t.decimal :balance, precision: 10, scale: 2, default: 0

      t.timestamps
    end
  end
end
