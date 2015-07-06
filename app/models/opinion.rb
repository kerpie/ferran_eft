class Opinion < ActiveRecord::Base

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	#validates_attachment_content_type :image, :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'file type is not allowed (only jpeg/png/gif images)'  
	validates_attachment :image,  	presence: true, :message => 'file type is not allowed (only jpeg/png/gif images)' 
	validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

end
