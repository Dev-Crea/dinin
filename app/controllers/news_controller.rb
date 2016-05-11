# News controller
class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_utilisateur!

  # GET /news
  # GET /news.json
  def index
    @site = Site.find(params[:site_id])
    @news = News.where(site_id: @site.id)

    respond_to do |format|
      format.html
      format.atom { render layout: false }
    end
  end

  # GET /news/1
  # GET /news/1.json
  def show
  end

  # GET /news/new
  def new
    @news = News.new
  end

  # GET /news/1/edit
  def edit
  end

  # POST /news
  # POST /news.json
  def create
    @news = News.new(news_params)
    @news.utilisateur = current_utilisateur
    respond_to do |format|
      if @news.save
        new_saving(format)
      else
        new_saving!(format)
      end
    end
  end

  # PATCH/PUT /news/1
  # PATCH/PUT /news/1.json
  def update
    respond_to do |format|
      if @news.update(news_params)
        f_html format @news, t('news.update.success')
        format.json { render :show, status: :ok, location: @news }
      else
        format.html { render :edit }
        format.json { render json: @news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news/1
  # DELETE /news/1.json
  def destroy
    @news.destroy
    respond_to do |format|
      f_html format, site_news_index_url, t('news.destroy.success')
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:titre, :texte, :publication, :site_id,
                                 :auteur)
  end

  def new_saving(format)
    f_html format, site_news_path(id: @news), t('news.create.success')
    format.json { render :show, status: :created, location: @news }
  end

  def new_saving!(format)
    format.html { render :new }
    format.json { render json: @news.errors, status: :unprocessable_entity }
  end
end
