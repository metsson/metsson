class Manager::CasesController < ApplicationController
  def index
     @cases = CustomerCase.all
  end
end
