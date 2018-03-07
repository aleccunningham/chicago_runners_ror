class CreatePromotions < ActiveRecord::Migration[5.1]
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :description
      t.string :imagePath
      t.date :startDate
      t.date :endDate

      t.timestamps
    end
  end
end
