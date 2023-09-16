class Sdpctl < Formula
  desc "Appgate sdpctl is compatible with SDP Collectives versions 6 and newer"
  homepage "https://github.com/appgate/sdpctl"
  version "2023.09.14"

  on_macos do
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_amd64.tar.gz"
      sha256 "e6ea2b70848857f619c13d3c33242db9c949fe29614cc75510664ead83383736"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_arm64.tar.gz"
      sha256 "6d86197557d5207dd082524f1c56be20830c9398d49b260158f96be02e68de8e"
    end
  end

  def install
    bin.install "sdpctl"
  end

  test do
    system "sdpctl", "--version"
  end
end
