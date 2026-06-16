cask "ngrok" do
  version "3.39.8"

  if Hardware::CPU.intel?
    url "https://bin.ngrok.com/a/eGffkahBz55/ngrok-v3-3.39.8-darwin-amd64.zip"
    sha256 "0c85e83e8e396397ffc681a64d5c25fcfcf0424624dbdf8a4c15cded57ba5b8c"
  else
    url "https://bin.ngrok.com/a/npvVigbewP5/ngrok-v3-3.39.8-darwin-arm64.zip"
    sha256 "87f66f8756d8ce152caf7abccdb9c8c079d3bff5b5a385078c88d6f94c9da51d"
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
