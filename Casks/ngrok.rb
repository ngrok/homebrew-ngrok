cask "ngrok" do
  version "3.5.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/253zd1V6HPA/ngrok-v3-3.5.0-darwin-amd64.zip"
    sha256 "829610905276deb6f0a2b1c62f61c91c229da6fbf79b9e16507d65b5f69b73cd"
  else
    url "https://bin.equinox.io/a/6bzFxjd3ikr/ngrok-v3-3.5.0-darwin-arm64.zip"
    sha256 "d20649360b7e65536322b2b8c84516c051a563511d26601d5958a7ee35ce0b74"
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
