cask "ngrok" do
  version "3.3.3"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/6GYbdd9g28R/ngrok-v3-3.3.3-darwin-amd64.zip"
    sha256 "5e56c833efcbbd6ba6351707cf85a88364c602a81fd0ceae19e09e7a7923e06c"
  else
    url "https://bin.equinox.io/a/cfNBjG6xAbr/ngrok-v3-3.3.3-darwin-arm64.zip"
    sha256 "00aa480c1de2e0feac4bb2ab00b375fe9aa30030dccb3161c672754cc7cda416"
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
