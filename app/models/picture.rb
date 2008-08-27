class Picture < ActiveRecord::Base

    has_attachment  :processor => 'MiniMagick',
                    :content_type => :image, 
                    :storage => :file_system, 
                    :max_size => 500.kilobytes,
                    :resize_to => '320x200>',
                    :thumbnails => { :thumb => '10x10>' }

	validates_as_attachment
end
