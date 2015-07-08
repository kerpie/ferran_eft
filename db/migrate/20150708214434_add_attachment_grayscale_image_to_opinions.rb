class AddAttachmentGrayscaleImageToOpinions < ActiveRecord::Migration
  def self.up
    change_table :opinions do |t|
      t.attachment :grayscale_image
    end
  end

  def self.down
    remove_attachment :opinions, :grayscale_image
  end
end
