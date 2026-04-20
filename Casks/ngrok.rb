cask "ngrok" do
  version "3.38.0"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/kTApLwEXM1k/ngrok-v3-3.38.0-darwin-amd64.zip"
    sha256 "3c213892aa993dbc8b8b51f464af7414171631ecc540f71df3a5f35d4c9b12e9"
  else
    url "https://bin.ngrok.com/a/7EMiwS51we7/ngrok-v3-3.38.0-darwin-arm64.zip"
    sha256 "02035c72c8af47a680db9aeaa40c41c18303074ba470fd721b941d2ee9fc532a"
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
