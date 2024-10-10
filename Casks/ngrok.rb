cask "ngrok" do
  version "3.17.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/8rNR7Y5BRpT/ngrok-v3-3.17.0-darwin-amd64.zip"
    sha256 "a3b491ffdd851902c3bb73c418cba413f9c3b8c03f4a07a2371fc492338ac97e"
  else
    url "https://bin.equinox.io/a/8CviNJZzRDW/ngrok-v3-3.17.0-darwin-arm64.zip"
    sha256 "46f9f0582d094255c04cdcbf1b3d6394078e17853c083983ac0fc47657e67bdf"
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
