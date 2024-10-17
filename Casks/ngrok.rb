cask "ngrok" do
  version "3.18.0"

  if Hardware::CPU.intel?
    url "https://bin.equinox.io/a/b4LHDc6bS6U/ngrok-v3-3.18.0-darwin-amd64.zip"
    sha256 "62bc7271d25d6558b471eb895e6c9a033e59f3e210309a00ae63193beb3775ad"
  else
    url "https://bin.equinox.io/a/4MzYqCnqPba/ngrok-v3-3.18.0-darwin-arm64.zip"
    sha256 "90b76331b1893ce4c864848d7c657fbdcad34003395a4522ec20712c654e4716"
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
