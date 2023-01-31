module DownloadHelpers
  PATH = File.join(__dir__, '..', '..', 'tmp', 'downloads')
  TIMEOUT = 10

  class << self
    def downloads
      Dir["#{PATH}/*"]
    end

    def download_file_name
      wait_for_download

      File.basename(downloads.first)
    end

    def wait_for_download
      Timeout.timeout(TIMEOUT) do
        sleep 0.1 until downloaded?
      end
    end

    def downloaded?
      !downloading? && downloads.any?
    end

    def downloading?
      downloads.grep(/\.part$/).any?
    end

    def clear_downloads
      FileUtils.rm_f(downloads)
    end
  end
end
