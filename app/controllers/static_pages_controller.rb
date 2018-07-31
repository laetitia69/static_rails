class StaticPagesController < ApplicationController
  def home
  	@user = User.all
  end

  def contact
  	
  end

  def about
  end
end
