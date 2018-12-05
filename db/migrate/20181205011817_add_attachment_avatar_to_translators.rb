class AddAttachmentAvatarToTranslators < ActiveRecord::Migration[5.2]
  def self.up
    change_table :translators do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :translators, :avatar
  end
end
