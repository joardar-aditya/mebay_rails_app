class CreateAds < ActiveRecord::Migration[6.0]
  def change
    create_table :ads do |t|
      t.string :name
      t.text :desc
      t.integer :seller_id
      t.decimal :price
      t.string :email
      t.string :img_url

      t.timestamps
    end
  end
end
