# encoding: UTF-8
module CentosAdmin
  class TimeMailer < ActionMailer::Base
    def self.default_url_options
      { host: Setting.host_name, protocol: Setting.protocol }
    end

    def little_time( project )
      @project = project
      emails = @project.managers.map{ |m| m.user.mail }
      mail from: Setting.mail_from, to: emails, subject: "#{@project.name}: осталось мало времени"
    end
  end
end
