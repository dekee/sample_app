class StaticPagesController < ApplicationController

  def home
	@time = Time.now  	
  end

  def help
  end

  def about
  end

  def contact
  end
end
