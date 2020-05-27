class CreateKakakus < ActiveRecord::Migration[5.2]
  def change
    create_table :kakakus do |t|
      t.string :hinnmei
      t.string :sikirikakaku
      t.string :teika
      t.string :bikou

      t.timestamps
    end
  end
end
