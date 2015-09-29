class TimesController < ApplicationController
  def search
  end

  def results
    @time_in_zone = Time.now.utc - params[:zone].to_i.hour    
  end
end
