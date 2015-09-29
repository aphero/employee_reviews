require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db.sqlite3'
)

class AlbumMigration < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.integer :artist_id
      t.integer :stock
      t.decimal :price, precision: 5, scale: 2
      # OR THIS t.decimal(:price, { precision: 5, scale: 2 })
      t.date :released_on
      t.timestamps null: false
    end
    # v This would replace t.date :released_on v
    #  add_column :albums, :release_date, :date

    create_table :artists do |t|
      t.string :name
    end
  end
end

AlbumMigration.migrate(:up)
