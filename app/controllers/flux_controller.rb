class FluxController < ApplicationController
  def index
    @sites = Site.all
  end

  def news
    @news = News.where(site_id: params[:site_id])

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
  end

  def new
    @new = News.where(site_id: params[:site_id], id: params[:new_id]).last
  end
end
