cask "ngrok" do
  version "3.16.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/8Aktob6EVAZ/ngrok-v3-3.16.0-darwin-amd64.zip"
    sha256 "d8c0f0616442d30d62917b3a8e4ffdb32e0d9d3a1533209c237aa48efa7cb8c6"
  else
    url "https://bin.equinox.io/a/m7a8FVY63/ngrok-v3-3.16.0-darwin-arm64.zip"
    sha256 "46f66ff2d30a775520da120e7b0d22439d26327693f483cfd155744b0cd0544f"
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
