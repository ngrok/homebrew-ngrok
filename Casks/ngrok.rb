cask "ngrok" do
  version "3.7.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/TQsdbZrrSx/ngrok-v3-3.7.0-darwin-amd64.zip"
    sha256 "e44673c0948c6729eb3f8a6a89218c9a0776a7e89f758b3a2e7875d5795f996b"
  else
    url "https://bin.equinox.io/a/at74kdRaEcZ/ngrok-v3-3.7.0-darwin-arm64.zip"
    sha256 "21870d6b1ac62501595eeb9f608c747e540eadfee47372b70a25946ed94c978a"
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
