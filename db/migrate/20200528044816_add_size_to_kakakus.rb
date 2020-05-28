class AddSizeToKakakus < ActiveRecord::Migration[5.2]
  def change
    add_column :kakakus, :size, :string
  end
end
