class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :teacher, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :duration
      t.datetime :datetime

      t.timestamps
    end
  end
end
