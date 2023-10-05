class Sdpctl < Formula
  desc "Appgate sdpctl is compatible with SDP Collectives versions 6 and newer"
  homepage "https://github.com/appgate/sdpctl"
  version "2023.10.04"

  on_macos do
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_amd64.tar.gz"
      sha256 "2fc3a6e25389339f858c4e382d3fbab0213b785a3d3cb89e837877b61320c486"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_arm64.tar.gz"
      sha256 "049b6cdb8eb1a86f8ef8141f72549cb445c66fe7dce304b3af6568187ce37781"
    end
  end

  def install
    bin.install "sdpctl"
  end

  test do
    system "sdpctl", "--version"
  end
end
