class ArticlesController < ApplicationController
  def new
  end

  def create
    p '!!!!!!!!!!!!!'
    render plain: params[:article].inspect
  end
end
