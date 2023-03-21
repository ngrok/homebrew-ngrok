cask "ngrok" do
  version "3.2.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/9jMiBksxbSZ/ngrok-v3-3.2.1-darwin-amd64.zip"
    sha256 "0687f6eb27be27defe78156e37dc22aa253fe19997a2dd024376a3bed4bbf281"
  else
    url "https://bin.equinox.io/a/ieMpdKGZc6g/ngrok-v3-3.2.1-darwin-arm64.zip"
    sha256 "896f37cff976229b39392916f23403349c350f871cb63677cb6b4fbafb97faee"
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
