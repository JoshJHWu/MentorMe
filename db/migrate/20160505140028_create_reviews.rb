class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :type, null: false
      t.integer :rating, null: false
      t.text :body, null: false
      # t.references :appointment, null: false #commented for testing before appointments built
      t.references :user, null: false

      t.timestamps null: false
    end
  end
end


