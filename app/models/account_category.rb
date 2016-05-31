class AccountCategory < ActiveRecord::Base
	has_many :user
end
