# frozen_string_literal: true

class LandingsController < ApplicationController
  def index
    redirect_to 'https://chercherbeckettletters.emory.edu/', status: :moved_permanently, allow_other_host: true
  end
end
