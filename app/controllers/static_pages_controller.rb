class StaticPagesController < ApplicationController

  def home
	@time = Time.now  	
  end

  def help
  end
end
