class Sdpctl < Formula
  desc "Appgate sdpctl is compatible with SDP Collectives versions 6 and newer"
  homepage "https://github.com/appgate/sdpctl"
  version "2023.08.29"

  on_macos do
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_amd64.tar.gz"
      sha256 "baad99013d6864462cab7f5291971198aaa75cb85ce87be2c2eb109fec326ece"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_arm64.tar.gz"
      sha256 "8fb4e1150b492888f27a8cab3e9485c0c3aef5d3a855a796032db37e4957421b"
    end
  end

  def install
    bin.install "sdpctl"
  end

  test do
    system "sdpctl", "--version"
  end
end
