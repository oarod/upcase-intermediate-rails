class Shout < ActiveRecord::Base
  belongs_to :content, polymorphic: true
  belongs_to :user

  default_scope { order(:created_at => :desc) }
end
