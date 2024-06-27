cask "ngrok" do
  version "3.12.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/n1TP6A4QtB/ngrok-v3-3.12.0-darwin-amd64.zip"
    sha256 "b532ddae193966677c206b229249c7055ffe50c9aef3262c24de491cf0b58316"
  else
    url "https://bin.equinox.io/a/d2tzJ5RRFo1/ngrok-v3-3.12.0-darwin-arm64.zip"
    sha256 "f092183233f426f4f0cfbc9745c6cd2b2b2208c127b75f3d3ae9f7acf45d3fde"
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
