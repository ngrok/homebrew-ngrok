cask "ngrok" do
  version "3.4.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/jjj8xKsane/ngrok-v3-3.4.0-darwin-amd64.zip"
    sha256 "d1873f5dd726354dd325522af968da8851757482efd7770d7030ce4ade310612"
  else
    url "https://bin.equinox.io/a/agjU2Wdyz17/ngrok-v3-3.4.0-darwin-arm64.zip"
    sha256 "9e33bddd21fac92dfdcf442c9feb36b73bccd58729e383ad976223566487d7fb"
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
