module FastdfsClient

  extend ActiveSupport::Concern

  included do
    delegate :upload, to: self.class
  end

  module ClassMethods
    # option = Rails.application.secrets.fastdfs
    # puts "option = #{Rails.application.secrets}"
    @@tracker = Fastdfs::Client::Tracker.new(trackers: {host: "49.232.151.122", port: 22122})
    def fdfs_upload(file)
      @@tracker.upload(file)
    end

    def fdfs_delete(image)
      @@tracker.delete(image.path, image.group)
    end

  end

end