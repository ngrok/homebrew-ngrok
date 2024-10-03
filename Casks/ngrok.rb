cask "ngrok" do
  version "3.16.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/8TvJyc3GZfx/ngrok-v3-3.16.1-darwin-amd64.zip"
    sha256 "e8126d61305f0b697b221c2d4d6512c841edb383181af014ec9e22939518e20a"
  else
    url "https://bin.equinox.io/a/dW4eR4uyHNy/ngrok-v3-3.16.1-darwin-arm64.zip"
    sha256 "2bd6257b46ee5627c396c94b8020cdd2506eaf15918e6220ee6ac0f5768942cc"
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
