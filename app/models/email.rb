class Email < ActiveRecord::Base
  attr_accessible :email, :is_company, :is_neither, :is_teacher, :name, :no_contact, :organization

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence   => true,
                :format     => { :with => email_regex },
                :uniqueness => { :case_sensitive => false }
end
