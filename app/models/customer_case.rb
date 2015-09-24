# == Schema Information
#
# Table name: customer_cases
#
#  id            :integer          not null, primary key
#  name          :string(255)      not null
#  email_address :string(255)      not null
#  case          :text             not null
#  created_at    :datetime
#  updated_at    :datetime
#

class CustomerCase < ActiveRecord::Base
end
