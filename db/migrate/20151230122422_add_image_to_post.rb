class AddImageToPost < ActiveRecord::Migration
  def change
    add_attachment :image
  end
end
