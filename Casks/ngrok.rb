cask "ngrok" do
  version "3.28.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/bKNoZzWwmVE/ngrok-v3-3.28.0-darwin-amd64.zip"
    sha256 "120b85db51d5f137cb206410b700b11bb963fac21be0e6a3d3b2a21713a5ccd4"
  else
    url "https://bin.equinox.io/a/jrWErVRJLWS/ngrok-v3-3.28.0-darwin-arm64.zip"
    sha256 "8782f82c7daca514f1db5952818de9cd2140c85472d9b69393f4e19d06c4e3a2"
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
