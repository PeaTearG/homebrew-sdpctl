class Sdpctl < Formula
  desc "Appgate sdpctl is compatible with SDP Collectives versions 6 and newer"
  homepage "https://github.com/appgate/sdpctl"
  version "2023.08.18"

  if OS.mac?
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_amd64.tar.gz"
      sha256 "b8b8ee4b601b0b6ffea60160824e6f187caf842453fdc7b661adf4f056c0eacc"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_darwin_arm64.tar.gz"
      sha256 "515a17310f629eebcf6935b1b4ddf5e6e7d052152e22704b1c568a8132ad1bca"
    end
  else
    if RUBY_PLATFORM.include?("x86_64")
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_linux_amd64.tar.gz"
      sha256 "abc4f5c96632de5fb63758893086cb1402dc66db1378bf51878dd292678620d2"
    else
      url "https://github.com/appgate/sdpctl/releases/download/#{version}/sdpctl_#{version}_linux_arm64.tar.gz"
      sha256 "114730ecfe16cc12a681033e831d25aee866a21b042078c16b3c27bf05aa0966"
    end
  end

  def install
    bin.install "sdpctl"
  end

  test do
    system "sdpctl", "--version"
  end
end
