cask "ngrok" do
  version "3.22.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/kwPxkptNrPv/ngrok-v3-3.22.1-darwin-amd64.zip"
    sha256 "2731b1f71179415e4899c47c3cc46fe8f3e887804d15c15194e4f7277da92bde"
  else
    url "https://bin.equinox.io/a/iLxEDf9WX6s/ngrok-v3-3.22.1-darwin-arm64.zip"
    sha256 "c97c2e549b5b629921a50cf41ae04bc76b778f3659620216e27fb03519d22fea"
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
