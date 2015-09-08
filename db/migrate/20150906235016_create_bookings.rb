class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.belongs_to :topic, index:true
    	t.date :occurs_on
      t.timestamps null: false
    end
  end
end
