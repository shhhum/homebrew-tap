class ToMp3 < Formula
  desc "Recursively convert audio files to high-quality 320kbps MP3"
  homepage "https://github.com/shhhum/to_mp3"
  url "https://github.com/shhhum/to_mp3/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6c5d5e6699171238c7c439e1a76387df93cc0a77a400eb966f29653ba5b1fddf"
  version "0.1.0"

  depends_on "ffmpeg"

  def install
    bin.install "to-mp3"
  end

  test do
    assert_match "to-mp3 #{version}", shell_output("#{bin}/to-mp3 --version")
  end
end
