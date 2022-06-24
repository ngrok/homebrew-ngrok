cask "ngrok" do
  version "3.0.5"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/kDrytDaoX6f/ngrok-v3-3.0.5-darwin-amd64.zip"
    sha256 "c93d7db70be016558d8f3147a39d08e2120ae1c974cd65a60c2ed4cc42bfe129"
  else
    url "https://bin.equinox.io/a/4TgG8D5ExeX/ngrok-v3-3.0.5-darwin-arm64.zip"
    sha256 "4ea876c44fe8f0bf98add52054454e6c7effba7d616dd93bb34038fa3d2fbf8a"
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
