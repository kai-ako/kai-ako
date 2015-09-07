class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.belongs_to :topic, index:true
    	t.date :date
      t.timestamps null: false
    end
  end
end
