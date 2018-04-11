class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :name
      t.datetime :dob
      t.string :bio

      t.timestamps

    end
  end
end
