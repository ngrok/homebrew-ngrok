cask "ngrok" do
  version "3.31.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/2uh7P2eViSD/ngrok-v3-3.31.0-darwin-amd64.zip"
    sha256 "4bc9c6e6669fd32a1c9d5d48f2efea8304fcc0d96b78e10cc0746c90440488d5"
  else
    url "https://bin.equinox.io/a/mkKqb5zY4Mi/ngrok-v3-3.31.0-darwin-arm64.zip"
    sha256 "e84e920d7ebc80205852db013d0b2a9497ba4c968978544e91cad9b68e39a11a"
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
