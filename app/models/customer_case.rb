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

class CustomerCase < ActiveRecord::Base
    default_scope { order(created_at: :desc) }

    # Validation rules
    validates :name, presence: { message: "Jag uppfattade inte namnet. Vad ska jag kalla dig?" }
    validates :email_address, presence: { message: "Hur ska jag återkomma till dig? Vänligen ange en giltig mailadress." }
    validates :message, presence: { message: "Ingen text hittades i meddelandet." }, length: { minimum: 10, maximum: 500, message: "Vänligen beskriv ditt ärende så detaljerat som möjligt." }
end
