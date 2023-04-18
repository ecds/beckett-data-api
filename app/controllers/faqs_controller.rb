# frozen_string_literal: true

class FaqsController < ApplicationController
  # before_action :set_faq, only: %i[ show update destroy ]

  # # GET /faqs
  # # GET /faqs.json
  def index
    @faqs = Faq.all
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
    head :not_implemented
  end

  # # POST /faqs
  # # POST /faqs.json
  # def create
  #   @faq = Faq.new(faq_params)

  #   if @faq.save
  #     render :show, status: :created, location: @faq
  #   else
  #     render json: @faq.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /faqs/1
  # # PATCH/PUT /faqs/1.json
  # def update
  #   if @faq.update(faq_params)
  #     render :show, status: :ok, location: @faq
  #   else
  #     render json: @faq.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /faqs/1
  # # DELETE /faqs/1.json
  # def destroy
  #   @faq.destroy
  # end

  # private
  # # Use callbacks to share common setup or constraints between actions.
  # def set_faq
  #   @faq = Faq.find(params[:id])
  # end

  # # Only allow a list of trusted parameters through.
  # def faq_params
  #   params.fetch(:faq, {})
  # end
end
