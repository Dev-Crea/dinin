# Flux controller
class FluxController < ApplicationController
  def index
    @sites = Writer.all
  end

  def news
    @site = Writer.find(params[:site_id])
    @news = News.where(site_id: @site)

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
  end

  def new
    @new = News.where(site_id: params[:site_id], id: params[:new_id]).last
  end
end
