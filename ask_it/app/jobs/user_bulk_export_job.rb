# frozen_string_literal: true

class UserBulkExportJob < ApplicationJob
  queue_as :default

  def perform(initiator)
    # zipped_blob = UserBulkExportService.call
    stream = UserBulkExportService.call

    # Admin::UserMailer.with(user: initiator, zipped_blob: zipped_blob)
    #                  .bulk_export_done.deliver_now
    Admin::UserMailer.with(user: initiator, stream: stream)
                     .bulk_export_done.deliver_now

  # ensure
  #   zipped_blob.purge
  end
end