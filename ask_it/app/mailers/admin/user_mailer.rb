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
  end
end