cask "ngrok" do
  version "3.0.3"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/2S3sS52tHuW/ngrok-v3-3.0.3-darwin-amd64.zip"
    sha256 "1424c01ee692ae8561ede345a5147f95575e1e32791e9a860cf8ce864b506b59"
  else
    url "https://bin.equinox.io/a/bAJjmBVPAAc/ngrok-v3-3.0.3-darwin-arm64.zip"
    sha256 "2e4977547aa96c58649695b84282340236ba2a6433436b93cc9e78d2a0a1be7a"
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
