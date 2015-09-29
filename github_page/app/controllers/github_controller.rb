class GithubController < ApplicationController
  def search
  end

  def result
    @name = params[:q]
  end
end
