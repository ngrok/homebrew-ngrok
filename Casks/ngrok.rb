cask "ngrok" do
  version "3.3.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/n51SfD8xcsb/ngrok-v3-3.3.1-darwin-amd64.zip"
    sha256 "1ef6c4fa646a9af01825c773b78f30540cbd8ddf3f01716865d45d461a7dc242"
  else
    url "https://bin.equinox.io/a/gRmfNMWCVKD/ngrok-v3-3.3.1-darwin-arm64.zip"
    sha256 "1dc1d57292a780d23fe850a2b497cdc78d83f0e5941f0ab53e62126bfece43b9"
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
