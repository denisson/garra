class AddDefaultUser < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('admin')
      User.create(:login => 'admin', :email => 'admin@sampleapp.com',
                  :password => '1234', :password_confirmation => '1234')
    end
  end

  def self.down
  end
end
