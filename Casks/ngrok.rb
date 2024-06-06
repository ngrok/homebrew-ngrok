cask "ngrok" do
  version "3.10.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/8RiZrogbZ8F/ngrok-v3-3.10.1-darwin-amd64.zip"
    sha256 "023869f3a3a82c3325c717b1e825a95083ce303e9fcd9ca9d05a3504043bd35c"
  else
    url "https://bin.equinox.io/a/mGPzPfBVNhS/ngrok-v3-3.10.1-darwin-arm64.zip"
    sha256 "4b5f76cad43e1aa7941abf1f5222cbfd4a347f2ef606e5a1d6f14c7f72aed105"
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
