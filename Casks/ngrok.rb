cask "ngrok" do
  version "3.30.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/42TKt5ZNNH/ngrok-v3-3.30.0-darwin-amd64.zip"
    sha256 "21b403fdb5407e136d319da99c0c9df5fbba2235712225adf2c4aa0fa0feac4b"
  else
    url "https://bin.equinox.io/a/hccQ4GWLNHr/ngrok-v3-3.30.0-darwin-arm64.zip"
    sha256 "2ab0f2e1035de85fce6a677f1095acd42cd9bdeed4c65b0097cac15b906d138d"
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
