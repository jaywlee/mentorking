class CreateMentors < ActiveRecord::Migration
  def change
    create_table :mentors do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :division

      t.timestamps

    end
  end
end
