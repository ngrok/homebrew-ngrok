cask "ngrok" do
  version "3.19.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/59HYdr4iC4K/ngrok-v3-3.19.0-darwin-amd64.zip"
    sha256 "12b3dfdbadbf7fc7ab026f6350b80f5e41458105fe8fbece37d2f0005494dcfe"
  else
    url "https://bin.equinox.io/a/6eUJ9CKgUtA/ngrok-v3-3.19.0-darwin-arm64.zip"
    sha256 "cd8675fd3f89160b36c4fc1cf0e38dd7d294982235edceaa2ed203417a9cf9fc"
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
