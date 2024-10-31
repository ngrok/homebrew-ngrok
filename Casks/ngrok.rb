cask "ngrok" do
  version "3.18.2"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/i6TF9eyAdsv/ngrok-v3-3.18.2-darwin-amd64.zip"
    sha256 "ff279c44f7efc156622fc834576e3c6f0179352cf4219aff316864261610de56"
  else
    url "https://bin.equinox.io/a/czUMRaQ5SD8/ngrok-v3-3.18.2-darwin-arm64.zip"
    sha256 "3d654ea615be67e475f62b1b759f934aa5aadd1f0548f8cd5eb927b717d3b94c"
  end

  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  binary "ngrok"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: "~/.ngrok2"
end
