class User < ActiveRecord::Base
 attr_accessor :avatar, :avatar_file_name, :password_confirmation, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :agree, :dd, :mm, :yyyy 
#,:country_id, :city_id

  attr_accessible :dob, :avatar_file_name, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :avatar, :email, :fname, :gender, :lname, :password, :dd, :mm, :yyyy, :agree, :password_confirmation, :country, :city

has_attached_file :avatar 
 
DD = (1..31).to_a
 MM = (1..12).to_a
 YYYY = (1980..2013).to_a

#self.per_page = 3
end
