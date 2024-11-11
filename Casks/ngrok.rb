cask "ngrok" do
  version "3.18.4"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/aDBRBiFFsoG/ngrok-v3-3.18.4-darwin-amd64.zip"
    sha256 "cc124d6c95250baa5f923f98c5a5ed4c0cf98b6c473b78a25bc5edbd08d4fe34"
  else
    url "https://bin.equinox.io/a/eb5fgv4hujc/ngrok-v3-3.18.4-darwin-arm64.zip"
    sha256 "9525b86ad91bb760d3fbebbe16f02ba2f1cdac49cc611f3992e159fc088b799b"
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
