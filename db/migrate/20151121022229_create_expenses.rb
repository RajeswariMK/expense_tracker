class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :type
      t.text :description
      t.references :user, index: true
      t.string :title
      t.datetime :originally_created_at

      t.timestamps
    end
  end
end
