class Opinion < ActiveRecord::Base

	has_attached_file 	:image, 
						:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  						:url => "/system/:attachment/:id/:style/:filename",
						:styles => { 
							:medium => "300x300>", 
							:grayscale => { 
								processors: [:grayscale]
							}
						}, 
						:default_url => "/images/:style/missing.png"


 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
