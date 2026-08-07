# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BigSamMailer do
  let(:report) do
    {
      total: 10,
      loaded: 7,
      skipped: [
        { id: 1, code: 'A1', reason: 'excluded' },
        { id: 2, code: 'A2', reason: 'bad date: ArgumentError: invalid date' }
      ],
      errors: [
        { id: 3, code: 'A3', error: 'NoMethodError: undefined method' }
      ],
      created: { letters: 7, entities: 12, repositories: 1, collections: 0,
                 letter_owners: 0, file_folders: 0, letter_publishers: 0, languages: 1 }
    }
  end

  around do |example|
    original_dev = ENV.fetch('BIG_SAM_DEV_REPORT_EMAILS', nil)
    original_owner = ENV.fetch('BIG_SAM_OWNER_REPORT_EMAILS', nil)
    example.run
  ensure
    ENV['BIG_SAM_DEV_REPORT_EMAILS'] = original_dev
    ENV['BIG_SAM_OWNER_REPORT_EMAILS'] = original_owner
  end

  describe '#developer_report' do
    it 'does not build a mail when no recipients are configured' do
      ENV.delete('BIG_SAM_DEV_REPORT_EMAILS')

      mail = described_class.developer_report(report)

      expect(mail.to).to be_nil
    end

    it 'sends to every configured recipient, listing errors and skipped rows' do
      ENV['BIG_SAM_DEV_REPORT_EMAILS'] = 'dev1@example.com, dev2@example.com'

      mail = described_class.developer_report(report)

      expect(mail.to).to eq(%w[dev1@example.com dev2@example.com])
      expect(mail.subject).to eq('Big Sam load: 1 row(s) failed')
      expect(mail.html_part.body).to include('A3')
      expect(mail.html_part.body).to include('NoMethodError')
      expect(mail.text_part.body).to include('A2')
    end

    it 'uses a success subject when nothing failed' do
      ENV['BIG_SAM_DEV_REPORT_EMAILS'] = 'dev1@example.com'
      clean_report = report.merge(errors: [])

      mail = described_class.developer_report(clean_report)

      expect(mail.subject).to eq('Big Sam load complete: 7 letters loaded')
    end
  end

  describe '#owner_report' do
    it 'does not build a mail when no recipients are configured' do
      ENV.delete('BIG_SAM_OWNER_REPORT_EMAILS')

      mail = described_class.owner_report(report)

      expect(mail.to).to be_nil
    end

    it 'separates excluded rows from rows that need attention, in plain language' do
      ENV['BIG_SAM_OWNER_REPORT_EMAILS'] = 'owner@example.com'

      mail = described_class.owner_report(report)

      expect(mail.to).to eq(['owner@example.com'])
      expect(mail.html_part.body).to include('could be understood').or include('could not be understood')
      expect(mail.html_part.body).not_to include('NoMethodError')
      expect(mail.html_part.body).not_to include('ArgumentError')
    end
  end

  describe '#friendly_reason' do
    let(:mailer) { described_class.new }

    it 'translates a bad-date skip reason into plain language' do
      expect(mailer.friendly_reason(reason: 'bad date: ArgumentError: invalid date'))
        .to eq('the date on this row could not be understood. Story of my life, really.')
    end

    it 'translates a missing-id skip reason into an actionable instruction' do
      expect(mailer.friendly_reason(reason: 'missing id')).to eq(
        'this row has no ID number, so it could not be loaded. Add one and re-upload whenever you feel ' \
        "like it. I'll be here. I'm always here."
      )
    end

    it 'falls back to a generic message for an error' do
      expect(mailer.friendly_reason(error: 'NoMethodError: boom')).to eq(
        "something unexpected happened while processing this row. I'd tell you what, but where's the joy in that."
      )
    end
  end
end
