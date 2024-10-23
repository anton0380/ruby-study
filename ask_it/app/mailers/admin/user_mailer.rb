module Admin
  class UserMailer < ApplicationMailer
    def bulk_import_done
      @user = params[:user]

      mail to: @user.email, subject: 'Bulk import done'
    end

    def bulk_import_fail
      @error = params[:error]
      @user = params[:user]

      mail to: @user.email, subject: 'Bulk import fail'
    end

    def bulk_export_done
      @user = params[:user]
      stream = params[:stream]

      # zipped_blob = params[:zipped_blob]
      # attachments[zipped_blob.attachable_filename] = zipped_blob.download
      attachments['result.zip'] = stream.read
      mail to: @user.email, subject: 'Bulk export done'
    end
  end
end