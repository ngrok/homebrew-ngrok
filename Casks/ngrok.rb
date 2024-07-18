cask "ngrok" do
  version "3.13.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/gMVp8Qs3zx6/ngrok-v3-3.13.0-darwin-amd64.zip"
    sha256 "fa12ba9fdb03e198cb6817f50ba509c827ea36a6941495e738486ecf3d294a90"
  else
    url "https://bin.equinox.io/a/7kjBS17S7vv/ngrok-v3-3.13.0-darwin-arm64.zip"
    sha256 "b6cf2e093aa5262e09fd76da702546b394093756d269c09555df92b23396f66b"
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
