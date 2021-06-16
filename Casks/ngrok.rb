cask "ngrok" do
  version "2.3.40"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/egaWz4kj88z/ngrok-2.3.40-darwin-amd64.zip"
    sha256 "3e40376cfff0f7c2494bd4396049b0897d00f0010bb07aaea461b0037f86034e"
  else
    url "https://bin.equinox.io/a/7tdmeXFCZg9/ngrok-2.3.40-darwin-arm64.zip"
    sha256 "cc88d9829b2ee9f518e51091dfb8fbceca69d15b86984e24ad34c916edf00124"
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
