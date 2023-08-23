class Sdpctl < Formula
  desc "Appgate sdpctl is compatible with SDP Collectives versions 6 and newer"
  homepage "https://github.com/appgate/sdpctl"
  version "2023.08.17"

  if OS.mac?
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_amd64.tar.gz"
      sha256 "52cd5129ec9480a3a65f02a117c57d2b56b849132b6d41fb09ac66a686d0b5d9"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_arm64.tar.gz"
      sha256 "cd55bca6c394a6b85713eab879593157b19671bc1235b56a0258544046294e14"
    end
  else
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_linux_amd64.tar.gz"
      sha256 "21401c02ba7a986083ff5a7883595315bfaef47e782b917df370a2b165bb9fd5"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_linux_arm64.tar.gz"
      sha256 "d28e64ea2fee2b87773673be540e0c356e64d66beb1cc06f0e164de43bbd66dd"
    end
  end

  def install
    bin.install "sdpctl"
  end

  test do
    system "sdpctl", "--version"
  end
end
