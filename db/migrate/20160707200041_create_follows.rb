class CreateFollows < ActiveRecord::Migration
  def change
    create_table :follows do |t|
      t.belongs_to :follower, index: true, foreign_key: true
      t.belongs_to :followee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
