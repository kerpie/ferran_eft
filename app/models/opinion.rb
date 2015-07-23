class Opinion < ActiveRecord::Base

	has_attached_file 	:image,
				:processors => [:grayscale], 
						:path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  						:url => "/system/:attachment/:id/:style/:filename",
						:styles => { 
							:grayscale => { 
								processors: [:grayscale]
							}
						}, 
						:default_url => "/images/:style/missing.png"


 	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
