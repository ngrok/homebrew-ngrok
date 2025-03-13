cask "ngrok" do
  version "3.21.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/k6WG5BzaeU9/ngrok-v3-3.21.0-darwin-amd64.zip"
    sha256 "7591d2ac2241a9f264d6ef7989a9d02dd80a1dce1e8b52f9b9e11d5ae39a30bd"
  else
    url "https://bin.equinox.io/a/aWANJFhWLK9/ngrok-v3-3.21.0-darwin-arm64.zip"
    sha256 "7979d3149a7f59c34e32563876d002a7059b9cb16dc5cf170a89f314e4288739"
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
