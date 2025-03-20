cask "ngrok" do
  version "3.22.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/k1SqqyNoHzq/ngrok-v3-3.22.0-darwin-amd64.zip"
    sha256 "8345992c7183c29a2163fc80f78e59774b2e04f5c084c00ecc42795f213aade9"
  else
    url "https://bin.equinox.io/a/5rbFrG1tRq7/ngrok-v3-3.22.0-darwin-arm64.zip"
    sha256 "12ae8080ebfaf0f6f7c0ac789177767d1534cecc834057d8467a05380fbfd198"
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
