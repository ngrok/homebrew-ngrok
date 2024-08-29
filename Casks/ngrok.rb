cask "ngrok" do
  version "3.15.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/aYCNuau9LcY/ngrok-v3-3.15.0-darwin-amd64.zip"
    sha256 "27a3de763505020603f5f5328d863e0d1df84c1bed632462320962a8861f8bb6"
  else
    url "https://bin.equinox.io/a/i4pRZQWrbqn/ngrok-v3-3.15.0-darwin-arm64.zip"
    sha256 "1e7165ed219fca20fcc0c15c248ad3fd4cffcef2000b8559fa1d636ff5a4ff83"
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
