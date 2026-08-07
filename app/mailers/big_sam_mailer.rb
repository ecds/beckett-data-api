# frozen_string_literal: true

class BigSamMailer < ApplicationMailer
  helper_method :friendly_reason

  def self.dev_recipients
    ENV.fetch('BIG_SAM_DEV_REPORT_EMAILS', '').split(',').map(&:strip).compact_blank
  end

  def self.owner_recipients
    ENV.fetch('BIG_SAM_OWNER_REPORT_EMAILS', '').split(',').map(&:strip).compact_blank
  end

  # report: { total:, loaded:, skipped: [{id:, code:, reason:}], errors: [{id:, code:, error:}], created: {} }
  def developer_report(report)
    recipients = self.class.dev_recipients
    return if recipients.empty?

    @report = report
    @errors = report[:errors].first(100)
    @errors_truncated = report[:errors].size - @errors.size
    @skipped = report[:skipped].first(100)
    @skipped_truncated = report[:skipped].size - @skipped.size

    subject = if report[:errors].any?
                "Big Sam load: #{report[:errors].size} row(s) failed"
              else
                "Big Sam load complete: #{report[:loaded]} letters loaded"
              end

    mail(to: recipients, subject:)
  end

  def owner_report(report)
    recipients = self.class.owner_recipients
    return if recipients.empty?

    @report = report
    @excluded = report[:skipped].select {|s| s[:reason] == 'excluded' }
    @needs_attention = report[:skipped].reject {|s| s[:reason] == 'excluded' } + report[:errors]

    mail(to: recipients, subject: 'Big Sam spreadsheet update complete. For a given value of "complete."')
  end

  # Public so the owner_report views can call it.
  def friendly_reason(item)
    text = (item[:reason] || item[:error]).to_s
    return 'the date on this row could not be understood. Story of my life, really.' if text.start_with?('bad date')

    if text.start_with?('missing id')
      return 'this row has no ID number, so it could not be loaded. Add one and re-upload whenever you feel ' \
             "like it. I'll be here. I'm always here."
    end

    "something unexpected happened while processing this row. I'd tell you what, but where's the joy in that."
  end
end
