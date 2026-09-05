cask "ngrok" do
  version "3.39.11"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/8QQF2ciKqxM/ngrok-v3-3.39.11-darwin-amd64.zip"
    sha256 "c6b9b3d9184fc08c33fb8b181d9f241d8f5d61162a0be0521b6dfc1f11813a96"
  else
    url "https://bin.ngrok.com/a/dy27whJwwmb/ngrok-v3-3.39.11-darwin-arm64.zip"
    sha256 "9324a6552d74e25d5bdfdbedc4b32422c96f044fda37877498ad8ef10bddf7f7"
  end

  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  binary "ngrok"

  postflight_steps do
    set_permissions "ngrok", "0755"
  end

  zap trash: "~/.ngrok2"
end
