class ToMp3 < Formula
  desc "Recursively convert audio files to high-quality 320kbps MP3"
  homepage "https://github.com/shhhum/to_mp3"
  url "https://github.com/shhhum/to_mp3/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  version "0.1.1"

  depends_on "ffmpeg"

  def install
    bin.install "to-mp3"
  end

  test do
    assert_match "to-mp3 #{version}", shell_output("#{bin}/to-mp3 --version")
  end
end
