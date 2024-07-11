cask "ngrok" do
  version "3.12.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/h72rBgf41Hw/ngrok-v3-3.12.1-darwin-amd64.zip"
    sha256 "39f7540fdefc1f3d7ce72b858dd2f55b4f8bb177fcdd29a33d0e6eceec23556f"
  else
    url "https://bin.equinox.io/a/4FUeVQHt2kb/ngrok-v3-3.12.1-darwin-arm64.zip"
    sha256 "beb6413db82a81c6a4f16813eb27271c4ee711ef67c9a35ede5de637ded6d4fd"
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
