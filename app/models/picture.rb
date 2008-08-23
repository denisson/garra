class Picture < ActiveRecord::Base
	has_attachment :content_type => :image,:storage => :file_system, :resize_to=> [50,50]
end
