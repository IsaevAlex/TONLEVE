class Order < ActiveRecord::Base
	 belongs_to :sender_user, :class_name => "User"
     belongs_to :recipient_user, :class_name => "User"
     validates :content, presence: true
     validates_length_of :content, :maximum => 200
	 validates_length_of :content, :minimum => 5
end
