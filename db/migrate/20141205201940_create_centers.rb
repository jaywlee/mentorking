class CreateCenters < ActiveRecord::Migration
  def change
    create_table :centers do |t|
      t.integer :mentor_id
      t.integer :division_id
      t.integer :service_id
      t.integer :ratings

      t.timestamps

    end
  end
end
