class CreateHiddenjobs < ActiveRecord::Migration
  def change
    create_table :hiddenjobs do |t|
      t.references :user, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
