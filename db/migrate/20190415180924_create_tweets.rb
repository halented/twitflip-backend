class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :html
      t.integer :collection_id

      t.timestamps
    end
  end
end
