cask "ngrok" do
  version "3.36.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/fzGQscny9aS/ngrok-v3-3.36.0-darwin-amd64.zip"
    sha256 "69f4a2c58650e7d79a271ea21316738d0e651dadbe87edef3cd3ab93fd63bf6b"
  else
    url "https://bin.equinox.io/a/a8i6aqunjBw/ngrok-v3-3.36.0-darwin-arm64.zip"
    sha256 "0bdb55b024146d48c1fbc169f2823daf4cf173c94ff3a8b994356f0ddb4f4a9d"
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
