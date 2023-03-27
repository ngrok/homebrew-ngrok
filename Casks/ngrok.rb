cask "ngrok" do
  version "3.2.2"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/hoFbK2Q2jz3/ngrok-v3-3.2.2-darwin-amd64.zip"
    sha256 "707bea6a294413e6d39edcb3f131846bccdb1a00d4fb2ed2a8f2cb5aa94da231"
  else
    url "https://bin.equinox.io/a/dRdWsQNE9tG/ngrok-v3-3.2.2-darwin-arm64.zip"
    sha256 "3c4f03856b782f30ed97a5f174307b6fbdfcc1f488c60a0d1a3b73295d07d8b4"
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
