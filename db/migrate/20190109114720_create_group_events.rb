class CreateGroupEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :group_events do |t|
      t.references :user
      t.datetime :start_date
      t.datetime :end_date
      t.integer :duration
      t.string :name
      t.text :description
      t.text :markdown_description
      t.string :location
      t.datetime :published_at
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
