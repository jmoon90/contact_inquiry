class ContactForm < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :subject
  validates_presence_of :description

  validates_format_of :email, :with =>
  /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
end
