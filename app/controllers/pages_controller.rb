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
    @case = CustomerCase.new(case_params)

    if @case.save      
      redirect_to root_url,
      notice:  "Tack för att du tog kontakt. Jag återkommer till dig så fort jag kan."
    else      
      render 'contact', 
      notice: "Sorry! Jag förstod inte riktigt vad du ville skriva eller så har du missat någon obligatorisk uppgift."
    end
  end

private
  def case_params
    params[:case].permit(:name, :message, :email_address)
  end
end
