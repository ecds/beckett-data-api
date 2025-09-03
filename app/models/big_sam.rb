# frozen_string_literal: true

class BigSam < ApplicationRecord
  after_create_commit :load_letters
  before_destroy :delete_file

  has_one_attached :big_sam

  def local_path
    ActiveStorage::Blob.service.path_for(big_sam.key)
  end

  private

  def load_letters
    LoadBigSamJob.perform_later self unless ENV['RAILS_ENV'] == 'test'
    LoadBigSamJob.perform_now self
  end

  def delete_file
    big_sam.purge
  end
end
