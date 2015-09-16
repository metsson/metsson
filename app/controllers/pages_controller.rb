class PagesController < ApplicationController
  def index
  end

  def merkur
  end

  def contact
    # Create new customer case to be sent
    @case = CustomerCase.new
  end

  # POST new contact form (creates a case)
  def customer_case
  end
end
