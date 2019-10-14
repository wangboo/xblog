class FastDFSClient

  class << self
    @tracker = Fastdfs::Client::Tracker.new(trackers: {host: "192.168.1.1", port: "22122"})

    def upload(file)
      @tracker.upload(file)
    end
  end

end