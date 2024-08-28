# frozen_string_literal: true

class AboutPagesController < ApplicationController
  before_action :set_about_page, only: %i[show update destroy]

  # GET /about_pages
  # GET /about_pages.json
  def index
    head :not_implemented
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_about_page
    @about_page = AboutPage.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def about_page_params
    params.fetch(:about_page, {})
  end
end
