cask "ngrok" do
  version "3.19.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/htqXFyhmNGH/ngrok-v3-3.19.1-darwin-amd64.zip"
    sha256 "e331acb9485214974c2a42e4ab71bc682874c92923d9b7e70f43e6e610c52ec2"
  else
    url "https://bin.equinox.io/a/32ay38T2E92/ngrok-v3-3.19.1-darwin-arm64.zip"
    sha256 "c8ee5b75b1c7e972e3b77b8c3625b35902292b517305222c946bbd89ade2ae34"
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
