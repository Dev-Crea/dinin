# Site controller
class SitesController < ApplicationController
  before_action :set_site, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_utilisateur!

  # GET /sites
  # GET /sites.json
  def index
    @sites = Site.all
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
  end

  # GET /sites/new
  def new
    @site = Site.new
  end

  # GET /sites/1/edit
  def edit
  end

  # POST /sites
  # POST /sites.json
  def create
    @site = Site.new(site_params, utilisateur: current_utilisateur)

    respond_to do |format|
      if @site.save
        site_saving(format)
      else
        site_saving!(format)
      end
    end
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    respond_to do |format|
      if @site.update(site_params)
        f_html format, @site, 'Site was successfully updated.'
        format.json { render :show, status: :ok, location: @site }
      else
        format.html { render :edit }
        format.json { render json: @site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site.destroy
    respond_to do |format|
      f_html format, sites_url, 'Site was successfully destroyed.'
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_site
    @site = Site.find(params[:id])
  end

  def site_params
    params.require(:site).permit(:nom, :domaine)
  end

  def site_saving
    SystemMailer.site_created(current_utilisateur.email, @site.nom,
                              @site.id.to_str).deliver_later
    f_html format, @site, 'Site was successfully created.'
  end

  def site_saving!(format)
    format.html { render :new }
  end
end
