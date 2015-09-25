# == Schema Information
#
# Table name: customer_cases
#
#  id            :integer          not null, primary key
#  name          :string(255)      not null
#  email_address :string(255)      not null
#  message       :text             not null
#  created_at    :datetime
#  updated_at    :datetime
#

require 'test_helper'

class CustomerCaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
