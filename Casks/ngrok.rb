cask "ngrok" do
  version "3.34.1"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/kGStVejYdBP/ngrok-v3-3.34.1-darwin-amd64.zip"
    sha256 "cb76627fad83a43c2f490c4ffa03b2e8f019ab3386f0f8ca9a6754d506c3d9cc"
  else
    url "https://bin.equinox.io/a/hA4j9pEcs11/ngrok-v3-3.34.1-darwin-arm64.zip"
    sha256 "56e4699a3fed047e851d6e758604dae5f1388ad67f5af48a19c31d3b369344a6"
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
