class Opinion < ActiveRecord::Base

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	has_attached_file :grayscale_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
 	validates_attachment_content_type :grayscale_image, :content_type => /\Aimage\/.*\Z/

end