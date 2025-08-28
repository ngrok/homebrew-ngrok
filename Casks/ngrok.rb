cask "ngrok" do
  version "3.27.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/6j2tmhaYpxP/ngrok-v3-3.27.0-darwin-amd64.zip"
    sha256 "1d3055d5cd0a58cc5b193077004f2888cabc84e769c3785ef745fcf69186628f"
  else
    url "https://bin.equinox.io/a/6jTYdijFWmd/ngrok-v3-3.27.0-darwin-arm64.zip"
    sha256 "57dc41a10b03c224e5192be892e5a8a87b94ebafe5054a7523b9ecda17b53d7c"
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
