# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength

# News external to web service
class ReadersController < ApplicationController
  before_action :set_reader, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_utilisateur!

  # GET /readers
  # GET /readers.json
  def index
    @readers = Reader.all(current_utilisateur)
  end

  # GET /readers/1
  # GET /readers/1.json
  def show; end

  # GET /readers/new
  def new
    @reader = Reader.new
  end

  # GET /readers/1/edit
  def edit; end

  # POST /readers
  # POST /readers.json
  def create
    @reader = Reader.new(reader_params)

    respond_to do |format|
      if @reader.save
        format.html do
          redirect_to @reader, notice: 'Reader was successfully created.'
        end
        format.json { render :show, status: :created, location: @reader }
      else
        format.html { render :new }
        format.json do
          render json: @reader.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /readers/1
  # PATCH/PUT /readers/1.json
  def update
    respond_to do |format|
      if @reader.update(reader_params)
        format.html do
          redirect_to @reader, notice: 'Reader was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @reader }
      else
        format.html { render :edit }
        format.json do
          render json: @reader.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /readers/1
  # DELETE /readers/1.json
  def destroy
    @reader.destroy
    respond_to do |format|
      format.html do
        redirect_to readers_url, notice: 'Reader was successfully destroyed.'
      end
      format.json { head :no_content }
    end
  end

  # GET /readers/unread
  # GET /readers/unread.json
  def unread
    @news = []
    @readers = Reader.all(current_utilisateur)
    @readers.each do |reader_news|
      @news.push(title: reader_news.nom, news: reader_news.news)
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reader
    @reader = Reader.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list
  # through.
  def reader_params
    params.require(:reader).permit(:domaine, :utilisateur_id)
  end
end
# rubocop:enable Metrics/MethodLength
